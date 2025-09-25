import argparse
import glob
import os
import shutil
from pathlib import Path
from PIL import Image
from .templates import advancement, toast, grant_flag, character, ingredient_translation, lang, font

images = {}


def main():
    parser = argparse.ArgumentParser(
        prog="cookbookgen",
        description="Generates adds transparent backgrounds to images in the input folder and dumps them into the output folder"
    )

    parser.add_argument('-input','--input-dir',type=str,help="Input directory containing texture files to be processed",default="input")
    parser.add_argument('-output','--output-dir',type=str,help="Output directory to put generated textures",default="output")

    args = parser.parse_args()

    input_path = get_path(args.input_dir)
    output_path = get_path(args.output_dir)
    clean_folder(output_path)
    generate(input_path, output_path)


def clean_folder(path):
    """Empties the contents of the path"""
    print(path)
    shutil.rmtree(path)
    path.mkdir(exist_ok=True)


def get_path(path: str):
    """Reads images from the path"""
    location = Path(path).resolve()

    if not location.is_dir():
        if not location.is_file():
            raise FileNotFoundError(f"No such directory or file: {location}")
    
    return location


def process_image(file, output_path):
    """Processes texture images"""
    image = Image.open(file)
    rgb_image = image.convert("RGBA")
    image_name = image.filename.split("\\")[-1]
    background_image = Image.new("RGBA", image.size, (0, 0, 0, 1))
    combined = Image.alpha_composite(background_image, rgb_image)

    combined.save(output_path / image_name, "PNG")
    return image_name


def generate(input_path, output_path):
    """Generate files"""
    types = ["block", "item"]

    for namespace_folder in input_path.iterdir():
        namespace = namespace_folder.name
        output_dir = output_path / namespace
        output_dir.mkdir(exist_ok=True)

        advancements_path = output_dir.joinpath("advancements").resolve()
        advancements_path.mkdir(exist_ok=True)

        grant_path = output_dir.joinpath("grant").resolve()
        grant_path.mkdir(exist_ok=True)

        icon_output_dir = output_dir / "icons"
        icon_output_dir.mkdir(exist_ok=True)

        characters_list = ""
        translations_list = ""
        character_number = 0

        for type in types:
            current_input_dir = namespace_folder / type
            current_output_dir = icon_output_dir / type
            current_output_dir.mkdir(exist_ok=True)

            files = glob.glob(f"{current_input_dir}/*.png",recursive=True)
            for file in files:
                # process images
                name = process_image(file, current_output_dir)
                name = name.removesuffix(".png")

                # process database code
                item_path = advancements_path / name
                item_path.mkdir(exist_ok=True)

                with open(item_path / "item.json", "w") as file:
                    file.write(advancement % {"namespace":namespace,"name":name})
                with open(item_path / "toast.json", "w") as file:
                    file.write(toast % {"namespace":namespace,"name":name})

                with open(grant_path / f"{name}.mcfunction", "w") as file:
                    file.write(grant_flag % {"namespace":namespace, "type":type, "name":name, "namespace": namespace})

                # font keys
                characters_list += (character % {"namespace":namespace, "type":type, "name":name, "number":str(character_number).zfill(3)})
                translations_list += (ingredient_translation % {"type":type, "name":name, "number":str(character_number).zfill(4), "namespace": namespace})
                character_number += 1

        with open(output_dir / "en_us.json", "w") as file:
            translations_list = translations_list[:-2] + "\n"
            file.write(lang % {"translations":translations_list})

        with open(output_dir / "icons.json", "w") as file:
            characters_list = characters_list[:-2] + "\n"
            file.write(font % {"characters":characters_list})


if __name__ == "__main__":
    main()