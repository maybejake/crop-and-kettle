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

font = "{\n    \"providers\": [\n%(characters)s    ]\n}"

character = "        {\"type\":\"bitmap\",\"file\":\"%(namespace)s:icon/%(type)s/%(name)s.png\",\"ascent\":15,\"height\":16,\"chars\":[\"\\uc%(number)s\"]},\n"

lang = "{\n%(translations)s}"

ingredient_translation = "  \"book.%(type)s.%(namespace)s.%(name)s\": \"\\u%(number)s\",\n"