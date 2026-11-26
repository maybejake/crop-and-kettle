from typing import ClassVar

from beet import Context, JsonFile, NamespaceFileScope, TagFile


class ItemSource(JsonFile):
    """Class representing an item source file"""

    scope: ClassVar[NamespaceFileScope] = ("unjank", "item_source")
    extension: ClassVar[str] = ".json"


class CreativeTab(JsonFile):
    """Class representing a creative tab file"""

    scope: ClassVar[NamespaceFileScope] = ("unjank", "creative_tab")
    extension: ClassVar[str] = ".json"


class ItemSourceTag(TagFile):
    """Class Representing an item source tag"""

    scope: ClassVar[NamespaceFileScope] = ("tags", "unjank", "item_source")

def beet_default(ctx: Context):
    ctx.data.extend_namespace.append(ItemSource)
    ctx.data.extend_namespace.append(CreativeTab)
    ctx.data.extend_namespace.append(ItemSourceTag)
