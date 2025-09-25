# Cookbook Helper

This script provides some assistance to datapack devs looking to make Crop & Kettle addons or adding compatibility to their packs!

### It does the following:
- Creates database advancements (trigger and toasts) for unlocking cookbook entries
- Adds transparent backgrounds to assets, which is a requirement for a cookbook icon
- Creates the cookbook icon font
- Creates the cookbook icon translation keys

### Using it is simple! 
- Just rename the `namespace` folder in the `input` folder to whatever your namespace is. ie: `cnk`
- Place your textures into the input folder, sorting them into the block and item folders. ie: my `custom_item.png` file will go into `input/<namespace>/item`
- Run the `run.bat` file! You can also install the python project via `pip install .` then run it using `python -m cookbook_helper`
- Resulting files are placed in the `output` folder

Some example textures have been placed in the `input/namespace` folder, feel free to remove them!

The script has arguments for overriding the default input and output folders, if desired:
- --input_dir - Path to input directory (local or absolute)
- --output_dir - Path to output directory (local or absolute)

### Output folder structure:
- The `advancements` folder contains the advancements used to grant players database flags. These are required to unlock a given recipe or advancement in the cookbook (unless discoverability is disabled for that recipe)
- The `grant` folder contains the grant functions that are run by the above advancements, they also grant the toast advancement if the player has them enabled. These are what actually updates the player's database with a given flag
- The `icons` folder contains your icon textures. They will now have a transparent background, which is required to not break alignment of assets in the cookbook
- `en_us.json` contains the translation keys for your cookbook icons
- `icons.json` is the font for your cookbook icons, the translation keys above point to these characters

### Things to remember:
- While this script generates advancements for you, you do need to add the data the advancement should check for yourself. Sorry!
- You may also need to change the translation key in your advancement, depending on whether the thing being unlocked is a recipe or an ingredient. Simply change `book.cnk.toast.unlock.ingredient` to `book.cnk.toast.unlock.recipe` if needed
- This script generates everything in your chosen namespace. If you're using it to generate stuff for vanilla items, be sure to change the namespace to `minecraft`. It can handle multiple namespaces in the input folder!

I might turn this into a beet library eventually, who knows