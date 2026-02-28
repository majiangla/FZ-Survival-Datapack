# 调用者：#fzsd:module/scoreboard/display/set_text/eat_food_points

data modify storage fzsd:module fzsd.module.scoreboard.text.eat_food_points set value '{"text": "进食榜", "color": "green"}'
scoreboard objectives setdisplay sidebar.team.green fzsd.module.scoreboard.display.eat_food_points
scoreboard objectives modify fzsd.module.scoreboard.display.eat_food_points displayname {"text": "进食榜", "color": "green"}
team modify fzsd.module.scoreboard.display.eat_food_points color green
team modify fzsd.module.scoreboard.display.eat_food_points displayName {"text": "进食榜", "color": "green"}
