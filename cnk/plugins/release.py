from beet import (
    Context,
    Language
)
import logging
import tempfile
import shutil
from pathlib import Path

LOGGER = logging.getLogger(__name__)


def beet_default(ctx: Context):
    """Package the datapack for release"""

    # Set version
    lang = ctx.assets.languages["cnk:en_us"].data
    lang["cnk.version"] = ctx.project_version
    ctx.assets["cnk:en_us"] = Language(lang)

    # Save datapack
    ctx.data.save(
        path=ctx.directory / ".build" / f"{ctx.project_name}-v{ctx.project_version}-Data-Pack",
        overwrite=True,
        zipped=True
    )

    # Save resourcepack
    ctx.assets.save(
        path=ctx.directory / ".build" / f"{ctx.project_name}-v{ctx.project_version}-Resource-Pack",
        overwrite=True,
        zipped=True
    )

    with tempfile.TemporaryDirectory() as temp_dir:
        temp_path = Path(temp_dir)

        # Save datapack
        data_pack_dir = temp_path / "data-pack"
        ctx.data.save(path=data_pack_dir)

        # Save resource pack
        resource_pack_dir = temp_path / "resource-pack"
        ctx.assets.save(path=resource_pack_dir)

        # Place data folder into resourcepack
        shutil.copytree(data_pack_dir / "data", resource_pack_dir / "data", dirs_exist_ok=True)

        # Zip
        data_resource_pack_dir = ctx.directory / ".build" / f"{ctx.project_name}-v{ctx.project_version}-Data-Resource-Pack"
        shutil.make_archive(data_resource_pack_dir, "zip", resource_pack_dir)