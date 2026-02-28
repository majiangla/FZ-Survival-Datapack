# 紧凑数值显示：>=1000 显示为 1 位小数 + K/M/G

execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"text": ""}, {"selector": "@s"}, " 的分数："]

function fzsd:module/scoreboard/interactor/show_my_score/activation
function fzsd:module/scoreboard/interactor/show_my_score/aviating_distance
function fzsd:module/scoreboard/interactor/show_my_score/damage_taken
function fzsd:module/scoreboard/interactor/show_my_score/death_count
function fzsd:module/scoreboard/interactor/show_my_score/dig_count
function fzsd:module/scoreboard/interactor/show_my_score/fishing_count
function fzsd:module/scoreboard/interactor/show_my_score/kill_count
function fzsd:module/scoreboard/interactor/show_my_score/trade_count
function fzsd:module/scoreboard/interactor/show_my_score/placement_count
function fzsd:module/scoreboard/interactor/show_my_score/afk_time
function fzsd:module/scoreboard/interactor/show_my_score/eat_food_points
