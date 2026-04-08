from beet import (
    Context,
    FileDeserialize,
    JsonFileBase,
    NamespaceFileScope,
    LootTable,
    ItemModel,
    Model,
    Language,
    Advancement
)
from pydantic import BaseModel, Field
from typing import ClassVar, Literal
import logging

LOGGER = logging.getLogger(__name__)

FEAST_SATURATION_THRESHOLD = 20

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


def generate_loot_table(ctx: Context, recipe: Recipe):
    """Generate a loot table for a recipe"""
    ingredient_data = {"type":recipe.id}
    if recipe.saturation >= FEAST_SATURATION_THRESHOLD:
        ingredient_data["feast"] = True

    ctx.data.loot_tables[f"cnk:food/{recipe.id}"] = LootTable({
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
                                    "minecraft:custom_data": {"cnk":{"ingredient":ingredient_data}, "smithed":{"ignore":{"functionality":True, "crafting":True}}},
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
    ctx.assets.item_models[f"cnk:{recipe.id}"] = ItemModel({
        "model": {
            "type": "minecraft:model",
            "model": f"cnk:item/{recipe.id}"
        }
    })

    ctx.assets.models[f"cnk:item/{recipe.id}"] = Model({
        "parent": "minecraft:item/generated",
        "textures": {
            "layer0": f"cnk:item/{recipe.id}"
        }
    })


def add_translation(ctx: Context, recipe: Recipe):
    """Adds the translation key for a given recipe"""
    lang = ctx.assets.languages["cnk:en_us"].data
    lang[f"item.cnk.{recipe.id}"] = recipe.name
    ctx.assets.languages["cnk:en_us"] = Language(lang)


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
    ctx.data.advancements["cnk:visible/all_recipes"] = Advancement(advancement)