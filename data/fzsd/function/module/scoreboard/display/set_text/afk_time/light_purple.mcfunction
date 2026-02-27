execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "计分板fzsd.module.scoreboard.display.afk_time显示文本颜色已设为light_purple"}]
data modify storage fzsd:module fzsd.module.scoreboard.text.afk_time set value '{"text": "挂机榜", "color": "light_purple"}'
