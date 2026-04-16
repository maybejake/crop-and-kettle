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
    Function,
    FunctionTag,
    Texture,
    Font
)
from pydantic import BaseModel, Field
from typing import ClassVar, Literal
from PIL import Image
import logging

from .blocks import blocks

LOGGER = logging.getLogger(__name__)

# Ingredients that require generic functions in recipes
GENERIC_INGREDIENTS = [
    "cnk:any_meat",
    "cnk:any_fish",
    "cnk:any_fruit",
    "cnk:any_mushroom",
    "cnk:any_seed",
    "cnk:any_vegetable",
    "cnk:any_disc",
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
    "minecraft:ice",
    "cnk:cooking_oil"
]

COOKBOOK_CATEGORIES = (
    "staple",
    "snacks",
    "light",
    "hearty",
    "feasts",
    "desserts"
)


class Recipe(BaseModel):
    id: str
    name: str
    ingredients: list[str] = Field(min_length=1, max_length=5)
    nutrition: float
    saturation: float
    category: Literal[*COOKBOOK_CATEGORIES] # pyright: ignore[reportInvalidTypeForm]
    tool: Literal[
        "cooking_pot",
        "mixing_bowl",
        "cutting_board"
    ]
    plateable: bool = False
    quantity: int = None
    loot_table: str = None


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
    current_character = 53248 # \ud000
    for resource_location in ctx.data[RecipeDefinition]:
        recipe = ctx.data[RecipeDefinition][resource_location].data

        # Item and recipe stuff
        generate_texture_files(ctx, recipe)
        add_translation(ctx, recipe)
        add_all_recipes_check(ctx, recipe)

        if not recipe.loot_table:
            # No override, generate loot table
            generate_loot_table(ctx, recipe)

        if recipe.tool == "cooking_pot":
            generate_cooking_pot_check(ctx, recipe)
            generate_cooking_pot_recipe(ctx, recipe)
        elif recipe.tool == "mixing_bowl":
            generate_mixing_bowl_check(ctx, recipe)
            generate_mixing_bowl_recipe(ctx, recipe)
        elif recipe.tool == "cutting_board":
            generate_cutting_board_check(ctx, recipe)
            generate_cutting_board_recipe(ctx, recipe)

        # Cookbook stuff
        current_character += 1
        generate_icon_files(ctx, recipe, current_character)
        generate_grant_code(ctx, recipe)
        generate_page_register(ctx, recipe)

        # Fizz stuff
        if recipe.category != "staple":
            generate_fizz_trade(ctx, recipe)

    # Order cookbook section tags alphabetically
    order_section_tags(ctx)


def generate_loot_table(ctx: Context, recipe: Recipe):
    """Generate a loot table for a recipe"""
    cnk_data = {"ingredient":{"type":recipe.id}}
    if recipe.category == "feasts":
        cnk_data["ingredient"]["feasts"] = True
    if recipe.plateable is True:
        cnk_data["placeable"] = {"model":f"cnk:placeable/{recipe.id}"}
    

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

    # If the recipe has quantity, generate a drops loot table for it
    if recipe.quantity:
        ctx.data[f"cnk:drops/{recipe.id}"] = LootTable({
            "pools": [
                {
                "rolls": 1,
                "entries": [
                    {
                    "type": "minecraft:loot_table",
                    "value": f"cnk:food/{recipe.id}",
                    "functions": [
                        {
                        "function": "minecraft:set_count",
                        "count": {
                            "type": "minecraft:score",
                            "target": {
                            "type": "minecraft:fixed",
                            "name": "$count"
                            },
                            "score": "cnk.dummy"
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
    # Remove duplicates
    ingredients = list(dict.fromkeys(recipe.ingredients))

    recipe_check = "execute "
    for ingredient in ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            # Generic, check how many were in original list
            count = recipe.ingredients.count(ingredient)

            generic = get_generic(ingredient)
            recipe_check += f"if function cnk:cooking_pot/crafting/generic/{generic} if score ${generic}_count cnk.dummy matches {count}.. "
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
    # Remove duplicates
    ingredients = list(dict.fromkeys(recipe.ingredients))

    recipe_function = []
    for ingredient in ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            generic = get_generic(ingredient)
            recipe_function.append(f"function cnk:recipes/remove_generic/{generic}")
        else:
            # Not generic, add normal remove
            ingredient_check = get_ingredient_check(ingredient)
            recipe_function.append(f"data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{ingredient_check}].Slot")
            recipe_function.append("function cnk:recipes/remove with storage cnk:temp cooking_pot")

    # Add spawn of result, if there's quantity use drops
    if recipe.quantity:
        recipe_function.extend([
            f"scoreboard players set $count cnk.dummy {recipe.quantity}",
            f"loot spawn ~ ~0.25 ~ loot cnk:drops/{recipe.id}"
        ])
    else:
        loot_table = f"cnk:food/{recipe.id}"
        if recipe.loot_table:
            # Override loot table
            loot_table = recipe.loot_table
        recipe_function.append(f"loot spawn ~ ~0.25 ~ loot {loot_table}")

    # Finish cooking
    recipe_function.append("function cnk:cooking_pot/effects/finish_cooking")

    # Append to function
    ctx.data[f"cnk:recipes/cooking_pot/{recipe.id}"] = Function(recipe_function)


def generate_mixing_bowl_check(ctx: Context, recipe: Recipe):
    """Generate the crafting check for a mixing bowl recipe"""
    # Start check
    recipe_check = f"execute if score $mixing_bowl_item_count cnk.dummy matches {len(recipe.ingredients)} "

    # Remove duplicates
    ingredients = list(dict.fromkeys(recipe.ingredients))

    # Append checks for each ingredient
    for ingredient in ingredients:
        if ingredient in GENERIC_INGREDIENTS:
            # Generic, check how many were in original list
            count = recipe.ingredients.count(ingredient)

            generic = get_generic(ingredient)
            recipe_check += f"if function cnk:mixing_bowl/mix/generic/{generic} if score ${generic}_count cnk.dummy matches {count}.. "
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
    recipe_function = []

    # Add spawn of result, if there's quantity use drops
    if recipe.quantity:
        recipe_function.extend([
            f"scoreboard players set $count cnk.dummy {recipe.quantity}",
            f"loot spawn ~ ~-0.3 ~ loot cnk:drops/{recipe.id}"
        ])
    else:
        loot_table = f"cnk:food/{recipe.id}"
        if recipe.loot_table:
            # Override loot table
            loot_table = recipe.loot_table
        recipe_function.append(f"loot spawn ~ ~-0.3 ~ loot {loot_table}")

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
    recipe_function = []

    # Add spawn of result, if there's quantity use drops
    if recipe.quantity:
        recipe_function.extend([
            f"scoreboard players set $count cnk.dummy {recipe.quantity}",
            f"loot spawn ~ ~-0.3 ~ loot cnk:drops/{recipe.id}"
        ])
    else:
        loot_table = f"cnk:food/{recipe.id}"
        if recipe.loot_table:
            # Override loot table
            loot_table = recipe.loot_table
        recipe_function.append(f"loot spawn ~ ~-0.3 ~ loot {loot_table}")

    recipe_function.append("function cnk:cutting_board/cut/finish")
    ctx.data[f"cnk:recipes/cutting_board/{recipe.id}"] = Function(recipe_function)


def generate_icon_files(ctx: Context, recipe: Recipe, current_character: int):
    """Generate icon files for a recipe including cookbook icon, font character and translation key"""
    # Get item texture
    asset = ctx.assets.textures.get(f"cnk:item/{recipe.id}")
    if not asset:
        LOGGER.error(f"No asset found for recipe {recipe.id}, this recipe will be skipped.")
        return
        
    image = asset.image

    # Apply background for alignment
    background = Image.new("RGBA", image.size, (0, 0, 0, 1))
    icon = Image.alpha_composite(background, image)

    # Create icon
    ctx.assets[f"cnk.book:icon/item/{recipe.id}"] = Texture(icon)

    # Create character translation key
    lang = ctx.assets.languages["cnk.book:en_us"].data
    lang[f"book.item.cnk.{recipe.id}"] = chr(current_character)
    ctx.assets["cnk.book:en_us"] = Language(lang)

    # Add icon to font
    font = ctx.assets.fonts["cnk.book:icons"].data
    font["providers"].append(
        {
            "type": "bitmap",
            "file": f"cnk.book:icon/item/{recipe.id}.png",
            "ascent": 15,
            "height": 16,
            "chars": [chr(current_character)],
        }
    )
    ctx.assets["cnk.book:icons"] = Font(font)


def generate_grant_code(ctx: Context, recipe: Recipe):
    """Generate code for granting a recipe flag to the player"""
    # Generate item advancement
    item_advancement = f"cnk:cookbook/{recipe.id}/item"
    ctx.data[item_advancement] = Advancement({
        "parent": "cnk:cookbook/root",
        "criteria": {
            "requirement": {
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
        },
        "rewards": {
            "function": f"cnk:cookbook/grant/{recipe.id}"
        }
    })

    # Generate toast advancement
    toast_advancement = f"cnk:cookbook/{recipe.id}/toast"
    ctx.data[toast_advancement] = Advancement({
        "parent": "cnk:cookbook/toasts",
        "display": {
            "title": [
                {"translate":"book.cnk.toast.background","font":"cnk.book:advancement"},
                {"translate":"book.cnk.toast.unlock.recipe","font":"cnk.book:advancement_text","color":"#7b613a"}
            ],
            "icon": {
            "id": "minecraft:poisonous_potato",
            "components": {"minecraft:item_model": f"cnk:{recipe.id}"}
            },
            "description": "",
            "announce_to_chat": False
        },
        "criteria": {
            "requirement": {
                "trigger": "minecraft:impossible"
            }
        }
    })

    # Generate grant function
    ctx.data[f"cnk:cookbook/grant/{recipe.id}"] = Function([
        f"function cnk:cookbook/database/set/main {{flag:'item.cnk.{recipe.id}'}}",
        f"execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only {item_advancement}",
        f"advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only {toast_advancement}"
    ])


def generate_page_register(ctx: Context, recipe: Recipe):
    """Generate a page register function for a recipe and add it to the correct function tag"""
    register_function = [
        "execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy",
        f"data modify storage cnk:temp register.tool set value 'cnk.{recipe.tool}'",
        f"data modify storage cnk:temp register.page_name set value 'item.cnk.{recipe.id}'",
        "data modify storage cnk:temp register.recipe_icon_font set value 'cnk.book:icons'"
    ]

    ingredients = []
    for ingredient in recipe.ingredients:
        item_type = "item"
        if ingredient in blocks:
            item_type = "block"

        namespace = str(ingredient.split(":")[0])
        item = str(ingredient.split(":")[1])
        ingredients.append({"key":f"{item_type}.{namespace}.{item}", "font":"cnk.book:icons"})

    # Add ingredient keys and fonts
    register_function.append(f"data modify storage cnk:temp register.ingredients set value {ingredients}")

    if recipe.plateable:
        # Append plateable stamp
        register_function.append("data modify storage cnk:temp register.stamp set value {icon:'book.cnk.stamp.plateable.icon', text:'book.cnk.stamp.plateable.text'}")

    # Finish function
    register_function.extend([
        "data modify storage cnk:temp register.source set value {key:'cnk.source', font:'cnk.book:base'}",
        "function cnk:cookbook/pages/register"
    ])

    ctx.data[f"cnk:cookbook/pages/{recipe.id}/register"] = Function(register_function)

    # Append to function tag
    function_tag = ctx.data.function_tags[f"cnk:cookbook/{recipe.category}"].data
    function_tag["values"].append(f"cnk:cookbook/pages/{recipe.id}/register")
    ctx.data[f"cnk:cookbook/{recipe.category}"] = FunctionTag(function_tag)


def generate_fizz_trade(ctx: Context, recipe: Recipe):
    """Generate a fizz trade for a given recipe"""
    loot_table = f"cnk:food/{recipe.id}"
    if recipe.loot_table:
        loot_table = recipe.loot_table

    trade_function = ctx.data.functions["cnk:fizz/trading/buy/recipes"].lines
    trade_function.append(f"execute if entity @s[advancements={{{f"cnk:cookbook/{recipe.id}/item"}=true}}] run data modify storage cnk:temp fizz.trading.items append value {{loot_table:'{loot_table}'}}")
    ctx.data["cnk:fizz/trading/buy/recipes"] = Function(trade_function)


def order_section_tags(ctx: Context):
    """Order the section function tags alphebetically"""
    for category in COOKBOOK_CATEGORIES:
        function_tag = ctx.data.function_tags[f"cnk:cookbook/{category}"].data
        function_tag["values"].sort()
        ctx.data[f"cnk:cookbook/{category}"] = FunctionTag(function_tag)


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
