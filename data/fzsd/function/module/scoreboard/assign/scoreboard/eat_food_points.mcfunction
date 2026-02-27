scoreboard players operation @s fzsd.module.scoreboard.display.eat_food_points += @s fzsd.event.food.delta
execute if score @s fzsd.module.scoreboard.display.eat_food_points matches ..-1 run scoreboard players set @s fzsd.module.scoreboard.display.eat_food_points 2147483647
scoreboard players operation fzsd.module.scoreboard.total.eat_food_points fzsd.module.scoreboard.assign.general += @s fzsd.event.food.delta
execute if score fzsd.module.scoreboard.total.eat_food_points fzsd.module.scoreboard.assign.general matches ..-1 run scoreboard players set fzsd.module.scoreboard.total.eat_food_points fzsd.module.scoreboard.assign.general 2147483647
