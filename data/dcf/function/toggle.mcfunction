$data modify storage dcf:temp enabled set value $(enabled)b
execute if data storage dcf:settings {enabled:true} if data storage dcf:temp {enabled:false} run gamerule send_command_feedback true

data modify storage dcf:settings enabled set from storage dcf:temp enabled