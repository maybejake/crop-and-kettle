advancement = """{
  \"parent\": \"cnk:cookbook/root\",
  \"criteria\": {
    \"requirement\": {
      \"trigger\": \"minecraft:inventory_changed\",
      \"conditions\": {
        \"items\": [
          {
            \"items\": \"minecraft:poisonous_potato\",
            \"components\": {
              \"minecraft:custom_data\": {\"please_fill_this_in\":true}
            }
          }
        ]
      }
    }
  },
  \"rewards\": {
    \"function\": \"%(namespace)s:cookbook/grant/%(name)s\"
  }
}
"""

toast = """{
  \"parent\": \"cnk:cookbook/toasts\",
  \"display\": {
    \"title\": [{\"translate\":\"book.cnk.toast.background\",\"font\":\"cnk.book:advancement\"},{\"translate\":\"book.cnk.toast.unlock.ingredient\",\"font\":\"cnk.book:advancement_text\",\"color\":\"#7b613a\"}],
    \"icon\": {
      \"id\": \"minecraft:poisonous_potato\",
      \"components\": {\"minecraft:item_model\": \"%(namespace)s:%(name)s\"}
    },
    \"description\": \"\",
    \"announce_to_chat\": false
  },
  \"criteria\": {
    \"requirement\": {
      \"trigger\": \"minecraft:impossible\"
    }
  }
}
"""

grant_flag = """function cnk:cookbook/database/set/main {flag:"%(type)s.%(namespace)s.%(name)s"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook/%(name)s/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook/%(name)s/toast"""

font = "{\n    \"providers\": [\n%(characters)s    ]\n}"

character = "        {\"type\":\"bitmap\",\"file\":\"%(namespace)s:icon/%(type)s/%(name)s.png\",\"ascent\":15,\"height\":16,\"chars\":[\"\\uc%(number)s\"]},\n"

lang = "{\n%(translations)s}"

ingredient_translation = "  \"book.%(type)s.%(namespace)s.%(name)s\": \"\\u%(number)s\",\n"