from beet import (
    Context,
    Language
)
import logging
import tempfile
import shutil
import os
from pathlib import Path

LOGGER = logging.getLogger(__name__)


def beet_default(ctx: Context):
    """Package the datapack for release"""
    # Get git tag if available
    ref = os.getenv("GITHUB_REF_NAME")
    ref_type = os.getenv("GITHUB_REF_TYPE")

    # Use project version, unless git tag exists
    version = f"v{ctx.project_version}"
    if ref_type == "tag":
        version = ref

    # Set version
    lang = ctx.assets.languages["cnk:en_us"].data
    lang["cnk.version"] = version
    ctx.assets["cnk:en_us"] = Language(lang)

    # Save datapack
    data_pack_path = ctx.directory / ".build" / f"{ctx.project_name}-{version}-Data-Pack"
    ctx.data.save(path=data_pack_path, overwrite=True, zipped=True)

    # Save resourcepack
    resource_pack_path = ctx.directory / ".build" / f"{ctx.project_name}-{version}-Resource-Pack"
    ctx.assets.save(path=resource_pack_path, overwrite=True, zipped=True)

    with tempfile.TemporaryDirectory() as temp_dir:
        temp_path = Path(temp_dir)

        # Save datapack
        data_pack_dir = temp_path / "data-pack"
        ctx.data.save(path=data_pack_dir)

        # Save resource pack
        resource_pack_dir = temp_path / "resource-pack"
        ctx.assets.save(path=resource_pack_dir)
