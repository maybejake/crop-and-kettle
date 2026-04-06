from beet import (
    Context,
    FileDeserialize,
    JsonFileBase,
    NamespaceFileScope,
    LootTable
)
from pydantic import BaseModel, Field
from typing import ClassVar, Literal
import logging

LOGGER = logging.getLogger(__name__)

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

        # Generate loot table
        generate_loot_table(ctx, recipe)


def generate_loot_table(ctx: Context, recipe: Recipe):
    """Generate a loot table for a recipe"""
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
                                    "minecraft:custom_data": {"cnk":{"ingredient":{"type":recipe.id}}, "smithed":{"ignore":{"functionality":True, "crafting":True}}},
                                    "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":False}]
                                }
                            }
                        ]
                    }
                ]
            }
        ]
    })
