execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "计分板fzsd.module.scoreboard.display.eat_food_points显示文本颜色已设为green"}]
data modify storage fzsd:module fzsd.module.scoreboard.text.eat_food_points set value '{"text": "进食榜", "color": "green"}'
