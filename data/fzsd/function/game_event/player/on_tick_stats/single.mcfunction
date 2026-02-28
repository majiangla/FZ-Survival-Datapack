execute store result score @s fzsd.event.food.current run data get entity @s foodLevel
scoreboard players operation @s fzsd.event.food.delta = @s fzsd.event.food.current
scoreboard players operation @s fzsd.event.food.delta -= @s fzsd.event.food.last
execute if data storage fzsd:install fzsd.module{scoreboard:1b} if score @s fzsd.event.food.delta matches 1.. run function #fzsd:module/scoreboard/assign/scoreboard/eat_food_points
scoreboard players operation @s fzsd.event.food.last = @s fzsd.event.food.current

execute store result score @s fzsd.event.afk.last_x run data get entity @s Pos[0] 100
execute store result score @s fzsd.event.afk.last_y run data get entity @s Pos[1] 100
execute store result score @s fzsd.event.afk.last_z run data get entity @s Pos[2] 100
execute store result score @s fzsd.event.afk.last_yaw run data get entity @s Rotation[0] 100
execute store result score @s fzsd.event.afk.last_pitch run data get entity @s Rotation[1] 100

execute if score @s fzsd.event.afk.last_x = @s fzsd.event.afk.curr_x if score @s fzsd.event.afk.last_y = @s fzsd.event.afk.curr_y if score @s fzsd.event.afk.last_z = @s fzsd.event.afk.curr_z if score @s fzsd.event.afk.last_yaw = @s fzsd.event.afk.curr_yaw if score @s fzsd.event.afk.last_pitch = @s fzsd.event.afk.curr_pitch run scoreboard players add @s fzsd.event.afk.idle_ticks 1
execute unless score @s fzsd.event.afk.last_x = @s fzsd.event.afk.curr_x run scoreboard players set @s fzsd.event.afk.idle_ticks 0
execute if score @s fzsd.event.afk.last_x = @s fzsd.event.afk.curr_x unless score @s fzsd.event.afk.last_y = @s fzsd.event.afk.curr_y run scoreboard players set @s fzsd.event.afk.idle_ticks 0
execute if score @s fzsd.event.afk.last_x = @s fzsd.event.afk.curr_x if score @s fzsd.event.afk.last_y = @s fzsd.event.afk.curr_y unless score @s fzsd.event.afk.last_z = @s fzsd.event.afk.curr_z run scoreboard players set @s fzsd.event.afk.idle_ticks 0
execute if score @s fzsd.event.afk.last_x = @s fzsd.event.afk.curr_x if score @s fzsd.event.afk.last_y = @s fzsd.event.afk.curr_y if score @s fzsd.event.afk.last_z = @s fzsd.event.afk.curr_z unless score @s fzsd.event.afk.last_yaw = @s fzsd.event.afk.curr_yaw run scoreboard players set @s fzsd.event.afk.idle_ticks 0
execute if score @s fzsd.event.afk.last_x = @s fzsd.event.afk.curr_x if score @s fzsd.event.afk.last_y = @s fzsd.event.afk.curr_y if score @s fzsd.event.afk.last_z = @s fzsd.event.afk.curr_z if score @s fzsd.event.afk.last_yaw = @s fzsd.event.afk.curr_yaw unless score @s fzsd.event.afk.last_pitch = @s fzsd.event.afk.curr_pitch run scoreboard players set @s fzsd.event.afk.idle_ticks 0
execute if score @s fzsd.event.afk.idle_ticks matches 200.. run scoreboard players add @s fzsd.event.afk.acc_ticks 1
execute if score @s fzsd.event.afk.idle_ticks matches ..199 run scoreboard players set @s fzsd.event.afk.acc_ticks 0
execute if data storage fzsd:install fzsd.module{scoreboard:1b} if score @s fzsd.event.afk.acc_ticks matches 72000.. run function #fzsd:module/scoreboard/assign/scoreboard/afk_time
execute if score @s fzsd.event.afk.acc_ticks matches 72000.. run scoreboard players remove @s fzsd.event.afk.acc_ticks 72000

scoreboard players operation @s fzsd.event.afk.curr_x = @s fzsd.event.afk.last_x
scoreboard players operation @s fzsd.event.afk.curr_y = @s fzsd.event.afk.last_y
scoreboard players operation @s fzsd.event.afk.curr_z = @s fzsd.event.afk.last_z
scoreboard players operation @s fzsd.event.afk.curr_yaw = @s fzsd.event.afk.last_yaw
scoreboard players operation @s fzsd.event.afk.curr_pitch = @s fzsd.event.afk.last_pitch
