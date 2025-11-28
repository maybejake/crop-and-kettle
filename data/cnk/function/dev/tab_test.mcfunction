dialog show @s { \
  "type": "minecraft:notice", \
  "title": "Cookbook", \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "contents": [ \
          {"text": "This is a test of something weird.","hover_event":{action:"show_text",value:"Hover!"}}, \
      ], \
      "width": 1024, \
    }, \
    { \
      "type": "minecraft:plain_message", \
      "contents": [ \
          {"text": "\ub013", font: "minecraft:default"}, \
          {"text": "This is a test of something weird.","hover_event":{action:"show_text",value:"Hover!"}}, \
          {"text": "\ub013", font: "minecraft:default"} \
      ], \
      "width": 1024, \
    } \
  ], \
  "inputs": [], \
  "can_close_with_escape": true, \
  "pause": false \
}