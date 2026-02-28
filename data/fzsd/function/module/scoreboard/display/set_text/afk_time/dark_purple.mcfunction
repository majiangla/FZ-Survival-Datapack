# 调用者：#fzsd:module/scoreboard/display/set_text/afk_time

data modify storage fzsd:module fzsd.module.scoreboard.text.afk_time set value '{"text": "挂机时长（h）", "color": "dark_purple"}'
scoreboard objectives setdisplay sidebar.team.dark_purple fzsd.module.scoreboard.display.afk_time
scoreboard objectives modify fzsd.module.scoreboard.display.afk_time displayname {"text": "挂机时长（h）", "color": "dark_purple"}
team modify fzsd.module.scoreboard.display.afk_time color dark_purple
team modify fzsd.module.scoreboard.display.afk_time displayName {"text": "挂机时长（h）", "color": "dark_purple"}
