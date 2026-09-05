"""Temporary plugin to make 26.3 work in bolt"""
from pathlib import Path
from typing import ClassVar

from beet import Context, JsonFile, NamespaceFileScope
from mecha import CommandTree, Mecha, MultilineParser, Parser, delegate


class ContextIntProvider(JsonFile):
    scope: ClassVar[NamespaceFileScope] = ("context_int_provider",)
    extension: ClassVar[str] = ".json"
    
class ContextFloatProvider(JsonFile):
    scope: ClassVar[NamespaceFileScope] = ("context_float_provider",)
    extension: ClassVar[str] = ".json"

class TagLootTable(JsonFile):
    scope: ClassVar[NamespaceFileScope] = ("tags","loot_table",)
    extension: ClassVar[str] = ".json"

class SlotSource(JsonFile):
    scope: ClassVar[NamespaceFileScope] = ("slot_source",)
    extension: ClassVar[str] = ".json"
    
def beet_default(ctx: Context):
    ctx.data.extend_namespace += [ContextIntProvider, ContextFloatProvider, TagLootTable, SlotSource]
    
    mc = ctx.inject(Mecha)
    
    commands_json = Path(ctx.directory / "cnk/plugins/26_3.json").read_text()
    command_tree = CommandTree.model_validate_json(commands_json)
    mc.spec.add_commands(command_tree)
    mc.spec.parsers.update(get_parsers())
    
def get_parsers() -> dict[str, Parser]:
    return {
        "command:argument:minecraft:context_int_provider": MultilineParser(
            delegate("resource_location_or_nbt")
        ),
        "command:argument:minecraft:context_float_provider": MultilineParser(
            delegate("resource_location_or_nbt")
        ),
    }