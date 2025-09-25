advancement = "{\n\
  \"parent\": \"cnk:cookbook/root\",\n\
  \"criteria\": {\n\
    \"requirement\": {\n\
      \"trigger\": \"minecraft:inventory_changed\",\n\
      \"conditions\": {\n\
        \"items\": [\n\
          {\n\
            \"items\": \"minecraft:poisonous_potato\",\n\
            \"components\": {\n\
              \"minecraft:custom_data\": {\"please_fill_this_in\":true}\n\
            }\n\
          }\n\
        ]\n\
      }\n\
    }\n\
  },\n\
  \"rewards\": {\n\
    \"function\": \"%(namespace)s:cookbook/grant/%(name)s\"\n\
  }\n\
}"

toast = "{\n\
  \"parent\": \"cnk:cookbook/toasts\",\n\
  \"display\": {\n\
    \"title\": [{\"translate\":\"book.cnk.toast.background\",\"font\":\"cnk.book:advancement\"},{\"translate\":\"book.cnk.toast.unlock.ingredient\",\"font\":\"cnk.book:advancement_text\",\"color\":\"#7b613a\"}],\n\
    \"icon\": {\n\
      \"id\": \"minecraft:poisonous_potato\",\n\
      \"components\": {\"minecraft:item_model\": \"%(namespace)s:%(name)s\"}\n\
    },\n\
    \"description\": \"\",\n\
    \"announce_to_chat\": false\n\
  },\n\
  \"criteria\": {\n\
    \"requirement\": {\n\
      \"trigger\": \"minecraft:impossible\"\n\
    }\n\
  }\n\
}"

grant_flag = "\
advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only %(namespace)s:cookbook/%(name)s/toast\n\
\n\
function cnk:cookbook/database/set/main {flag:\"%(type)s.%(namespace)s.%(name)s\"}"

defaults = "data modify storage cnk:defaults cookbook set value {\\\n%(defaults)s}"

font = "{\n    \"providers\": [\n%(characters)s    ]\n}"

character = "        {\"type\":\"bitmap\",\"file\":\"%(namespace)s:icon/%(type)s/%(name)s.png\",\"ascent\":15,\"height\":16,\"chars\":[\"\\uc%(number)s\"]},\n"

lang = "{\n%(translations)s}"

ingredient_translation = "  \"book.%(type)s.%(namespace)s.%(name)s\": \"\\u%(number)s\",\n"

loot_table = "{\n\
  \"pools\": [\n\
    {\n\
      \"rolls\": 1,\n\
      \"entries\": [\n\
        {\n\
          \"type\": \"minecraft:item\",\n\
          \"name\": \"minecraft:poisonous_potato\",\n\
          \"functions\": [\n\
            {\n\
              \"function\": \"minecraft:set_components\",\n\
              \"components\": {\n\
                \"minecraft:item_name\": {\"translate\":\"item.cnk.%(name)s\",\"fallback\":\"%(full_name)s\"},\n\
                \"minecraft:item_model\": \"cnk:%(name)s\",\n\
                \"minecraft:food\": {\n\
                  \"nutrition\": %(nutrition)s,\n\
                  \"saturation\": %(saturation)s\n\
                },\n\
                \"minecraft:consumable\": {},\n\
                \"minecraft:custom_data\": {\"cnk\":{\"ingredient\":{\"type\":\"%(name)s\"}},\"smithed\":{\"ignore\":{\"functionality\":true,\"crafting\":true}}},\n\
                \"minecraft:lore\": [{\"translate\":\"cnk.tooltip\",\"font\":\"cnk:tooltip\",\"color\":\"white\",\"italic\":false}],\n\
              }\n\
            }\n\
          ]\n\
        }\n\
      ]\n\
    }\n\
  ]\n\
}"

item_definition = "{\n\
  \"model\": {\n\
    \"type\": \"minecraft:model\",\n\
    \"model\": \"cnk:item/%(name)s\"\n\
  }\n\
}"

model_definition = "{\n\
  \"parent\": \"minecraft:item/generated\",\n\
  \"textures\": {\n\
    \"layer0\": \"cnk:item/%(name)s\"\n\
  }\n\
}"

vanilla_data = "id:\"minecraft:%(name)s\""

cnk_data = "components:{\"minecraft:custom_data\":{cnk:{ingredient:{type:\"%(name)s\"}}}}"

cutting_board_recipe = "execute if data storage cnk:temp cutting_board.item{%(input)s} run return run function cnk:recipes/cutting_board/%(output)s\n"

cutting_board_output = "\
loot spawn ~ ~-0.3 ~ loot cnk:food/%(name)s\n\
function cnk:cutting_board/cut/finish"

mixing_bowl_recipe = "\
execute if score $mixing_bowl_item_count cnk.dummy matches %(count)s \\\n\
%(ingredients)s\
        if function cnk:mixing_bowl/mix/lock \\\n\
        run return run data modify entity @s item.components.\"minecraft:custom_data\".cnk.mix_callback set value \"cnk:recipes/mixing_bowl/%(name)s\"\n\n"

mixing_bowl_output = "\
loot spawn ~ ~-0.3 ~ loot cnk:food/%(name)s\n\
\n\
%(extra)s\
function cnk:mixing_bowl/mix/clean_up"

cooking_pot_recipe = "execute \\\n\
%(ingredients)s\
        if function cnk:cooking_pot/crafting/lock \\\n\
        run return run function cnk:recipes/cooking_pot/%(name)s\n\n"

cooking_pot_output = "\
%(items)s\
loot spawn ~ ~0.25 ~ loot cnk:food/%(item)s\n\
\n\
function cnk:cooking_pot/effects/finish_cooking"

cooking_pot_remove = "\
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{%(item)s}].Slot\n\
function cnk:recipes/remove with storage cnk:temp cooking_pot\n\
%(extra)s\n"

page_layout = "\
  $dialog show @s { \\\n\
  \"type\": \"minecraft:multi_action\", \\\n\
  \"title\": {\"translate\":\"item.cnk.cookbook\"}, \\\n\
  \"body\": [ \\\n\
    { \\\n\
      \"type\": \"minecraft:plain_message\", \\\n\
      \"width\": 201, \\\n\
      \"contents\": { \\\n\
            \"translate\":\"book.cnk.%(count)s_recipe\",\"font\":\"cnk.book:base\",\"shadow_color\":0,\"color\":\"white\",\"with\":[ \\\n\
                {\"translate\":item.cnk.$(%(name)s),\"color\":\"#7b613a\",\"font\":\"cnk.book:title\"}, \\\n\
%(ingredients)s\
                {\"translate\":\"book.cnk.item.%(tool)s\"}, \\\n\
                {\"translate\":book.cnk.item.$(%(name)s)}, \\\n\
                {\"translate\":book.cnk.tab.front.$(front_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.front.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9921\"}}, \\\n\
                {\"translate\":book.cnk.tab.staple.$(staple_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.staple.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9922\"}}, \\\n\
                {\"translate\":book.cnk.tab.snack.$(snack_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.snack.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9923\"}}, \\\n\
                {\"translate\":book.cnk.tab.light.$(light_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.light.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9924\"}}, \\\n\
                {\"translate\":book.cnk.tab.hearty.$(hearty_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.hearty.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9925\"}}, \\\n\
                {\"translate\":book.cnk.tab.feast.$(feast_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.feast.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9926\"}}, \\\n\
                {\"translate\":book.cnk.tab.dessert.$(dessert_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.dessert.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9927\"}}, \\\n\
                {\"translate\":book.cnk.bottom_line,\"with\":[{\"translate\":book.cnk.page_number.$(page_number_width),\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"$(current_page)\",\"color\":\"#927359\"}]}]}, \\\n\
                {\"translate\":book.cnk.navigation,\"with\":[{\"translate\":book.cnk.previous_page,\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.previous_page.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9901\"}},{\"translate\":book.cnk.next_page,\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.next_page.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9902\"}}]} \\\n\
            ] \\\n\
        }, \\\n\
    }, \\\n\
    {\"type\":\"minecraft:plain_message\",\"width\":1,\"contents\":{\"text\":\"\\n\\n\\n\"}} \\\n\
  ], \\\n\
  \"inputs\": [], \\\n\
  \"can_close_with_escape\": true, \\\n\
  \"pause\": false, \\\n\
  \"after_action\": \"none\", \\\n\
  \"actions\": [ \\\n\
    { \\\n\
      \"label\": \"Done\", \\\n\
      \"width\": 200, \\\n\
      \"action\": { \\\n\
        \"type\": \"run_command\", \\\n\
        \"command\": \"trigger cnk.cookbook_buttons set 9991\" \\\n\
      } \\\n\
    } \\\n\
  ] \\\n\
}\
"

page_ingredient = "                {\"translate\":book.cnk.item.$(%(name)s),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(%(name)s)}}}, \\\n"

page_ingredient_recipe = "                {\"translate\":book.cnk.item.$(%(name)s),\"hover_event\":{\"action\":\"show_text\",\"value\":[{\"translate\":item.cnk.$(%(name)s)},{\"translate\":book.cnk.hyperlink,\"font\":\"cnk.book:base\"}]},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 991%(ingredient_position)s\"}}, \\\n"

register_function = "\
execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy\n\
\n\
data modify storage cnk:temp register.tool set value \"cnk.%(tool)s\"\n\
data modify storage cnk:temp register.page_name set value \"%(type)s.%(namespace)s.%(name)s\"\n\
data modify storage cnk:temp register.recipe_icon_font set value \"cnk.book:icons\"\n\
data modify storage cnk:temp register.ingredients set value [ \\\n\
%(references)s\
]\n\
\n\
data modify storage cnk:temp register.source set value {key:\"cnk.source\", font:\"cnk.book:base\"}\n\
\n\
function cnk:cookbook/pages/register with storage cnk:temp register\
"

reference = "    {key:\"%(type)s.%(namespace)s.%(name)s\", font:\"cnk.book:icons\"}, \\\n"

empty_page_layout = "\
{\"raw\":{\"translate\":\"book.cnk.%(count)s_recipe\",\"font\":\"cnk.book:base\",\"color\":\"white\",\"with\":[ \n\
  {\"translate\":\"book.cnk.recipe.unknown\",\"color\":\"#7b613a\",\"font\":\"cnk.book:title\"}, \n\
%(ingredients)s\
  {\"translate\":\"book.cnk.item.%(tool)s\"}, \n\
  {\"translate\":\"book.cnk.item.unknown\"} \n\
]}},\n"

index_page = "\
  {\"raw\":{\"translate\":\"book.cnk.index\",\"font\":\"cnk.book:base\",\"color\":\"white\",\"with\":[ \\\n\
    {\"translate\":\"book.cnk.index.title\",\"color\":\"#7b613a\",\"font\":\"cnk.book:title\"}, \\\n\
    {\"translate\":\"book.cnk.index.crop_seeds\",\"color\":\"#927359\",\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"%(crop_page)s\",\"font\":\"cnk.book:small_text\"}],\"click_event\":{\"action\":\"change_page\",\"page\":%(crop_page)s}}, \\\n\
    {\"translate\":\"book.cnk.index.staple\",\"color\":\"#927359\",\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"%(staple_page)s\",\"font\":\"cnk.book:small_text\"}],\"click_event\":{\"action\":\"change_page\",\"page\":%(staple_page)s}}, \\\n\
    {\"translate\":\"book.cnk.index.snack\",\"color\":\"#927359\",\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"%(snack_page)s\",\"font\":\"cnk.book:small_text\"}],\"click_event\":{\"action\":\"change_page\",\"page\":%(snack_page)s}}, \\\n\
    {\"translate\":\"book.cnk.index.light\",\"color\":\"#927359\",\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"%(light_page)s\",\"font\":\"cnk.book:small_text\"}],\"click_event\":{\"action\":\"change_page\",\"page\":%(light_page)s}}, \\\n\
    {\"translate\":\"book.cnk.index.hearty\",\"color\":\"#927359\",\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"%(hearty_page)s\",\"font\":\"cnk.book:small_text\"}],\"click_event\":{\"action\":\"change_page\",\"page\":%(hearty_page)s}}, \\\n\
    {\"translate\":\"book.cnk.index.feast\",\"color\":\"#927359\",\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"%(feast_page)s\",\"font\":\"cnk.book:small_text\"}],\"click_event\":{\"action\":\"change_page\",\"page\":%(feast_page)s}}, \\\n\
    {\"translate\":\"book.cnk.index.dessert\",\"color\":\"#927359\",\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"%(dessert_page)s\",\"font\":\"cnk.book:small_text\"}],\"click_event\":{\"action\":\"change_page\",\"page\":%(dessert_page)s}}, \\\n\
    {\"translate\":book.cnk.page_number.index,\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"1\",\"color\":\"#927359\"}]} \\\n\
  ]}}, \\\n"

pages_function = "$data modify storage cnk:temp cookbook.pages set value [ \\\n%(pages)s\n]"

section_header = "\
  {\"raw\":{\"translate\":\"book.cnk.header.%(section)s\",\"font\":\"cnk.book:base\",\"color\":\"white\",\"with\":[ \\\n\
    {\"translate\":\"book.cnk.section.%(section)s\",\"color\":\"#7b613a\",\"font\":\"cnk.book:%(font)s\"}, \\\n\
    {\"translate\":book.cnk.bottom_line,\"with\":[{\"translate\":book.cnk.index_button,\"click_event\":{\"action\":\"change_page\",\"page\":1}},{\"translate\":book.cnk.page_number.%(page_length)s,\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"%(current_page)s\",\"color\":\"#927359\"}]}]} \\\n\
  ]}}, \\\n"

trading_page = "  {\"raw\":{\"translate\":\"book.cnk.trading_page\",\"font\":\"cnk.book:base\",\"color\":\"white\"}} \\"

dough_note = "{\"translate\":book.cnk.note.$(dough),\"font\":\"cnk.book:base\"}, \\\n"

kebab_sword_page = "\
  $dialog show @s { \\\n\
  \"type\": \"minecraft:multi_action\", \\\n\
  \"title\": {\"translate\":\"item.cnk.cookbook\"}, \\\n\
  \"body\": [ \\\n\
    { \\\n\
      \"type\": \"minecraft:plain_message\", \\\n\
      \"width\": 201, \\\n\
      \"contents\": { \\\n\
            \"translate\":\"book.cnk.kebab_sword\",\"font\":\"cnk.book:base\",\"shadow_color\":0,\"color\":\"white\",\"with\":[ \\\n\
                {\"translate\":item.cnk.$(kebab_sword),\"color\":\"#7b613a\",\"font\":\"cnk.book:title\"}, \
                {\"translate\":book.cnk.item.$(kebab),\"hover_event\":{\"action\":\"show_text\",\"value\":[{\"translate\":item.cnk.$(kebab)},{\"translate\":book.cnk.hyperlink,\"font\":\"cnk.book:base\"}]},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9911\"}}, \
                {\"translate\":book.cnk.item.$(iron_sword),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(iron_sword)}}}, \
                {\"translate\":book.cnk.tab.front.$(front_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.front.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9921\"}}, \\\n\
                {\"translate\":book.cnk.tab.staple.$(staple_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.staple.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9922\"}}, \\\n\
                {\"translate\":book.cnk.tab.snack.$(snack_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.snack.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9923\"}}, \\\n\
                {\"translate\":book.cnk.tab.light.$(light_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.light.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9924\"}}, \\\n\
                {\"translate\":book.cnk.tab.hearty.$(hearty_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.hearty.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9925\"}}, \\\n\
                {\"translate\":book.cnk.tab.feast.$(feast_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.feast.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9926\"}}, \\\n\
                {\"translate\":book.cnk.tab.dessert.$(dessert_state),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.tab.dessert.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9927\"}}, \\\n\
                {\"translate\":book.cnk.bottom_line,\"with\":[{\"translate\":book.cnk.page_number.$(page_number_width),\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"$(current_page)\",\"color\":\"#927359\"}]}]}, \\\n\
                {\"translate\":book.cnk.navigation,\"with\":[{\"translate\":book.cnk.previous_page,\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.previous_page.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9901\"}},{\"translate\":book.cnk.next_page,\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":book.cnk.next_page.hover}},\"click_event\":{\"action\":\"run_command\",\"command\":\"trigger cnk.cookbook_buttons set 9902\"}}]} \\\n\
            ] \\\n\
        }, \\\n\
    }, \\\n\
    {\"type\":\"minecraft:plain_message\",\"width\":1,\"contents\":{\"text\":\"\\n\\n\\n\"}} \\\n\
  ], \\\n\
  \"inputs\": [], \\\n\
  \"can_close_with_escape\": true, \\\n\
  \"pause\": false, \\\n\
  \"after_action\": \"none\", \\\n\
  \"actions\": [ \\\n\
    { \\\n\
      \"label\": \"Done\", \\\n\
      \"width\": 200, \\\n\
      \"action\": { \\\n\
        \"type\": \"run_command\", \\\n\
        \"command\": \"trigger cnk.cookbook_buttons set 9991\" \\\n\
      } \\\n\
    } \\\n\
  ] \\\n\
}\
"

seeds_page = "\
  {\"raw\":{\"translate\":\"cnk.seeds.page\",\"font\":\"cnk.book:base\",\"color\":\"white\",\"with\":[ \\\n\
    {\"translate\":\"book.cnk.section.crop_seeds\",\"color\":\"#7b613a\",\"font\":\"cnk.book:title\"}, \\\n\
    {\"translate\":book.cnk.item.$(corn_seeds),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(corn_seeds)}}}, \\\n\
    {\"translate\":book.cnk.item.$(lettuce_seeds),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(lettuce_seeds)}}}, \\\n\
    {\"translate\":book.cnk.item.$(rice_seeds),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(rice_seeds)}}}, \\\n\
    {\"translate\":book.cnk.item.$(tomato_seeds),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(tomato_seeds)}}}, \\\n\
    {\"translate\":book.cnk.item.$(coffee_cherries),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(coffee_cherries)}}}, \\\n\
    {\"translate\":book.cnk.item.$(chili_pepper_seeds),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(chili_pepper_seeds)}}}, \\\n\
    {\"translate\":book.cnk.item.$(grape_seeds),\"hover_event\":{\"action\":\"show_text\",\"value\":{\"translate\":item.cnk.$(grape_seeds)}}}, \\\n\
    {\"translate\":book.cnk.bottom_line,\"with\":[{\"translate\":book.cnk.index_button,\"click_event\":{\"action\":\"change_page\",\"page\":1}},{\"translate\":book.cnk.page_number.single,\"font\":\"cnk.book:small_text\",\"with\":[{\"text\":\"2\",\"color\":\"#927359\"}]}]} \\\n\
  ]}}, \\\n\
"