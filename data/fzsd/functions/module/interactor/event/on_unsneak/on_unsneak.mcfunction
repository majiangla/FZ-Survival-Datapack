# 本目录用于存放向事件中注册的函数，并不用来新建事件

execute if data storage fzsd:install fzsd.module{interactor: 1b} if entity @s[tag=!fzsd.ignore_interactor_headup_sneak, x_rotation = -90] run function #fzsd:module/interactor/event/on_start_interact