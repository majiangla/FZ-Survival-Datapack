# 输入：fzsd.module.scoreboard.format.raw fzsd.variable.integer
# 输出：
# - fzsd.module.scoreboard.format.unit (0=原始,1=K,2=M,3=G,4=T,5=P,6=E)
# 说明：Minecraft计分板为32位有符号整数，当前运行时可达到的上限单位通常为G；
# T/P/E符号已预留，若未来切换到更大数值载体可直接启用。
# - fzsd.module.scoreboard.format.int
# - fzsd.module.scoreboard.format.dec
# - storage fzsd:module fzsd.module.scoreboard.format.suffix

scoreboard players set fzsd.module.scoreboard.format.unit fzsd.variable.integer 0
scoreboard players set fzsd.module.scoreboard.format.divisor fzsd.variable.integer 1

execute if score fzsd.module.scoreboard.format.raw fzsd.variable.integer matches 1000.. run scoreboard players set fzsd.module.scoreboard.format.unit fzsd.variable.integer 1
execute if score fzsd.module.scoreboard.format.raw fzsd.variable.integer matches 1000000.. run scoreboard players set fzsd.module.scoreboard.format.unit fzsd.variable.integer 2
execute if score fzsd.module.scoreboard.format.raw fzsd.variable.integer matches 1000000000.. run scoreboard players set fzsd.module.scoreboard.format.unit fzsd.variable.integer 3

execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 1 run scoreboard players set fzsd.module.scoreboard.format.divisor fzsd.variable.integer 1000
execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 2 run scoreboard players set fzsd.module.scoreboard.format.divisor fzsd.variable.integer 1000000
execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 3 run scoreboard players set fzsd.module.scoreboard.format.divisor fzsd.variable.integer 1000000000

scoreboard players operation fzsd.module.scoreboard.format.scaled10 fzsd.variable.integer = fzsd.module.scoreboard.format.raw fzsd.variable.integer
scoreboard players operation fzsd.module.scoreboard.format.scaled10 fzsd.variable.integer *= 10 fzsd.variable.integer
scoreboard players operation fzsd.module.scoreboard.format.scaled10 fzsd.variable.integer /= fzsd.module.scoreboard.format.divisor fzsd.variable.integer

scoreboard players operation fzsd.module.scoreboard.format.int fzsd.variable.integer = fzsd.module.scoreboard.format.scaled10 fzsd.variable.integer
scoreboard players operation fzsd.module.scoreboard.format.int fzsd.variable.integer /= 10 fzsd.variable.integer

scoreboard players operation fzsd.module.scoreboard.format.dec fzsd.variable.integer = fzsd.module.scoreboard.format.scaled10 fzsd.variable.integer
scoreboard players operation fzsd.module.scoreboard.format.tmp fzsd.variable.integer = fzsd.module.scoreboard.format.int fzsd.variable.integer
scoreboard players operation fzsd.module.scoreboard.format.tmp fzsd.variable.integer *= 10 fzsd.variable.integer
scoreboard players operation fzsd.module.scoreboard.format.dec fzsd.variable.integer -= fzsd.module.scoreboard.format.tmp fzsd.variable.integer

execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 0 run data modify storage fzsd:module fzsd.module.scoreboard.format.suffix set value ''
execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 1 run data modify storage fzsd:module fzsd.module.scoreboard.format.suffix set value 'K'
execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 2 run data modify storage fzsd:module fzsd.module.scoreboard.format.suffix set value 'M'
execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 3 run data modify storage fzsd:module fzsd.module.scoreboard.format.suffix set value 'G'

execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 4 run data modify storage fzsd:module fzsd.module.scoreboard.format.suffix set value 'T'
execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 5 run data modify storage fzsd:module fzsd.module.scoreboard.format.suffix set value 'P'
execute if score fzsd.module.scoreboard.format.unit fzsd.variable.integer matches 6 run data modify storage fzsd:module fzsd.module.scoreboard.format.suffix set value 'E'
