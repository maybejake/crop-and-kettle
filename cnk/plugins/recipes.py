from beet import (
    Context,
    FileDeserialize,
    JsonFileBase,
    NamespaceFileScope,
    LootTable,
    ItemModel,
    Model,
    Language,
    Advancement,
    Function
)
from pydantic import BaseModel, Field
from typing import ClassVar, Literal
import logging

LOGGER = logging.getLogger(__name__)

# Ingredients that require generic functions in recipes
GENERIC_INGREDIENTS = [
    "cnk:any_meat",
    "cnk:any_fish",
    "cnk:any_fruit",
    "cnk:any_mushroom",
    "cnk:any_seed",
    "cnk:any_vegetable",
    "cnk:beef_cutlets",
    "cnk:chicken_cutlets",
    "cnk:cod_fillets",
    "cnk:milk_bottle",
    "cnk:mutton_cutlets",
    "cnk:pork_cutlets",
    "cnk:rabbit_cutlets",
    "cnk:salmon_fillets",
    "minecraft:egg",
    "minecraft:water",
    "minecraft:ice"
]


class Recipe(BaseModel):
    id: str
    name: str
    ingredients: list[str] = Field(min_length=1, max_length=5)
    nutrition: float
    saturation: float
    category: Literal[
        "staple",
        "snack",
        "light",
        "hearty",
        "feast",
        "dessert"
    ]
    tool: Literal[
        "cooking_pot",
        "mixing_bowl",
        "cutting_board"
    ]
    plateable: bool = None


class RecipeDefinition(JsonFileBase[Recipe]):
    scope: ClassVar[NamespaceFileScope] = ("cnk_recipe",)
    extension: ClassVar[str] = ".json"
    data: ClassVar[FileDeserialize[Recipe]] = FileDeserialize()
    model = Recipe


def load_recipes(ctx: Context):
    """Loads recipes from the recipe yaml file"""
    ctx.data.extend_namespace.append(RecipeDefinition)
    yield
    ctx.data[RecipeDefinition].clear()


def beet_default(ctx: Context):
    """Entry point for beet"""
    if not ctx.data[RecipeDefinition]:
        LOGGER.error("No recipes found.")

    generate_recipes(ctx)


def generate_recipes(ctx: Context):
    """Generate recipes from json files"""
    for resource_location in ctx.data[RecipeDefinition]:
        recipe = ctx.data[RecipeDefinition][resource_location].data

        generate_loot_table(ctx, recipe)
        generate_texture_files(ctx, recipe)
        add_translation(ctx, recipe)
        add_all_recipes_check(ctx, recipe)

        if recipe.tool == "cooking_pot":
            generate_cooking_pot_check(ctx, recipe)
            generate_cooking_pot_recipe(ctx, recipe)
        elif recipe.tool == "mixing_bowl":
            generate_mixing_bowl_check(ctx, recipe)
            generate_mixing_bowl_recipe(ctx, recipe)
        elif recipe.tool == "cutting_board":
            if len(recipe.ingredients) > 1:
                LOGGER.error(f"Cutting board recipe {recipe.id} has more than 1 ingredient, skipping.")
                continue

            generate_cutting_board_check(ctx, recipe)
            generate_cutting_board_recipe(ctx, recipe)


def generate_loot_table(ctx: Context, recipe: Recipe):
    """Generate a loot table for a recipe"""
    cnk_data = {"ingredient":{"type":recipe.id}}
    if recipe.category == "feast":
        cnk_data["ingredient"]["feast"] = True
    if recipe.plateable is True:
        cnk_data["plateable"] = {"model":f"cnk:placeable/{recipe.id}"}
    

    ctx.data[f"cnk:food/{recipe.id}"] = LootTable({
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:item",
                        "name": "minecraft:poisonous_potato",
                        "functions": [
                            {
                                "function": "minecraft:set_components",
                                "components": {
                                    "minecraft:item_name": {"translate":f"item.cnk.{recipe.id}", "fallback":f"{recipe.name}"},
                                    "minecraft:item_model": f"cnk:{recipe.id}",
                                    "minecraft:food": {"nutrition":recipe.nutrition, "saturation":recipe.saturation},
                                    "minecraft:consumable": {},
                                    "minecraft:custom_data": {"cnk":cnk_data, "smithed":{"ignore":{"functionality":True, "crafting":True}}},
                                    "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":False}]
                                }
                            }
                        ]
                    }
                ]
            }
        ]
    })


def generate_texture_files(ctx: Context, recipe: Recipe):
    """Generate texture files for a recipe including item model and item definition"""
    ctx.assets[f"cnk:{recipe.id}"] = ItemModel({
        "model": {
            "type": "minecraft:model",
            "model": f"cnk:item/{recipe.id}"
        }
    })

    ctx.assets[f"cnk:item/{recipe.id}"] = Model({
        "parent": "minecraft:item/generated",
        "textures": {
            "layer0": f"cnk:item/{recipe.id}"
        }
    })


def add_translation(ctx: Context, recipe: Recipe):
    """Adds the translation key for a given recipe"""
    lang = ctx.assets.languages["cnk:en_us"].data
    lang[f"item.cnk.{recipe.id}"] = recipe.name
    ctx.assets["cnk:en_us"] = Language(lang)


def add_all_recipes_check(ctx: Context, recipe: Recipe):
    """Adds a check for the recipe to the all recipes advancement"""
    advancement = ctx.data.advancements["cnk:visible/all_recipes"].data
    advancement["criteria"][f"cnk:{recipe.id}"] = {
        "trigger": "minecraft:inventory_changed",
        "conditions": {
            "items": [
            {
                "items": "minecraft:poisonous_potato",
                "predicates": {
                "minecraft:custom_data": {"cnk":{"ingredient":{"type":recipe.id}}}
                }
            }
            ]
        }
    }
    ctx.data["cnk:visible/all_recipes"] = Advancement(advancement)


def generate_cooking_pot_check(ctx: Context, recipe: Recipe):
    """Generate the crafting check for a cooking pot recipe"""
    recipe_check = "execute "
    for ingredient in recipe.ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            generic = get_generic(ingredient)
            recipe_check += f"if function cnk:cooking_pot/crafting/generic/{generic} if score ${generic}_count cnk.dummy matches 1 "
        else:
            # Not generic, add normal check
            ingredient_check = get_ingredient_check(ingredient)
            recipe_check += f"if data storage cnk:temp cooking_pot.Items[{ingredient_check}] "

    # Finish check
    recipe_check += f"if function cnk:cooking_pot/crafting/lock run return run function cnk:recipes/cooking_pot/{recipe.id}"
    
    # Append to function
    crafting_function = ctx.data.functions[f"cnk:cooking_pot/crafting/{len(recipe.ingredients)}"].lines
    crafting_function.append(recipe_check)
    ctx.data[f"cnk:cooking_pot/crafting/{len(recipe.ingredients)}"] = Function(crafting_function)


def generate_cooking_pot_recipe(ctx: Context, recipe: Recipe):
    """Generate the recipe function for a cooking pot recipe"""
    recipe_function = []
    for ingredient in recipe.ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            generic = get_generic(ingredient)
            recipe_function.append(f"function cnk:recipes/remove_generic/{generic}")
        else:
            # Not generic, add normal remove
            ingredient_check = get_ingredient_check(ingredient)
            recipe_function.append(f"data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{ingredient_check}].Slot")
            recipe_function.append("function cnk:recipes/remove with storage cnk:temp cooking_pot")

    # Add spawn of result
    recipe_function.append(f"loot spawn ~ ~0.25 ~ loot cnk:food/{recipe.id}")

    # Finish cooking
    recipe_function.append("function cnk:cooking_pot/effects/finish_cooking")

    # Append to function
    ctx.data[f"cnk:recipes/cooking_pot/{recipe.id}"] = Function(recipe_function)


def generate_mixing_bowl_check(ctx: Context, recipe: Recipe):
    """Generate the crafting check for a mixing bowl recipe"""
    # Start check
    recipe_check = f"execute if score $mixing_bowl_item_count cnk.dummy matches {len(recipe.ingredients)} "

    # Append checks for each ingredient
    for ingredient in recipe.ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            generic = get_generic(ingredient)
            recipe_check += f"if function cnk:mixing_bowl/mix/generic/{generic} if score ${generic}_count cnk.dummy matches 1 "
        else:
            # Not generic, add normal check
            ingredient_check = get_ingredient_check(ingredient)
            recipe_check += f"if data storage cnk:temp mixing_bowl.Items[{ingredient_check}] "

    # Finish check
    recipe_check += f"if function cnk:mixing_bowl/mix/lock run return run data modify entity @s item.components.'minecraft:custom_data'.cnk.mix_callback set value 'cnk:recipes/mixing_bowl/{recipe.id}'"
    
    # Append to function
    crafting_function = ctx.data.functions["cnk:mixing_bowl/mix/recipes"].lines
    crafting_function.append(recipe_check)
    ctx.data["cnk:mixing_bowl/mix/recipes"] = Function(crafting_function)


def generate_mixing_bowl_recipe(ctx: Context, recipe: Recipe):
    """Generate the recipe function for a mixing bowl recipe"""
    # Add spawn of result 
    recipe_function = [f"loot spawn ~ ~-0.3 ~ loot cnk:food/{recipe.id}"]

    # Add byproduct handling
    for ingredient in recipe.ingredients:
        generic = get_generic(ingredient)
        if generic in ["milk", "water"]:
            recipe_function.append(f"function cnk:recipes/mixing_bowl/remove_generic/{generic}")

    # Clean up mixing
    recipe_function.append("function cnk:mixing_bowl/mix/clean_up")

    # Append to function
    ctx.data[f"cnk:recipes/mixing_bowl/{recipe.id}"] = Function(recipe_function)


def generate_cutting_board_check(ctx: Context, recipe: Recipe):
    """Generate the crafting check for a cutting board recipe"""
    # Get ingredient
    ingredient_check = get_ingredient_check(recipe.ingredients[0])

    # Append check to function
    crafting_function = ctx.data.functions["cnk:cutting_board/cut/recipes"].lines
    crafting_function.append(f"execute if data storage cnk:temp cutting_board.item{ingredient_check} run return run function cnk:recipes/cutting_board/{recipe.id}")
    ctx.data["cnk:cutting_board/cut/recipes"] = Function(crafting_function)


def generate_cutting_board_recipe(ctx: Context, recipe: Recipe):
    """Generate the recipe function for a cutting board recipe"""
    ctx.data[f"cnk:recipes/cutting_board/{recipe.id}"] = Function([
        f"loot spawn ~ ~-0.3 ~ loot cnk:food/{recipe.id}",
        "function cnk:cutting_board/cut/finish"
    ])


def get_ingredient_check(ingredient: str) -> str:
    """Get an ingredient storage check from an ingredient"""
    namespace = str(ingredient.split(":")[0])
    item = str(ingredient.split(":")[1])

    if namespace == "minecraft":
        ingredient_check = f"{{id:'{ingredient}'}}"
    elif namespace == "cnk":
        ingredient_check = f"{{components:{{'minecraft:custom_data':{{cnk:{{ingredient:{{type:'{item}'}}}}}}}}}}"
    else:
        return LOGGER.error(f"Unknown namespace in ingredient {ingredient}.")
    
    return ingredient_check


def get_generic(ingredient: str) -> str:
    """Get a generic from an ingredient"""
    item = str(ingredient.split(":")[1])
    item = item.removeprefix("any_")
    item = item.removesuffix("_cutlets")
    item = item.removesuffix("_fillets")
    item = item.removesuffix("_bottle")

    return item
