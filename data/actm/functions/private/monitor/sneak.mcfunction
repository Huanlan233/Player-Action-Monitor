execute if score @s actm.sneak matches 1.. run data modify entity @e[limit=1,sort=nearest,tag=actm.monitor] data.States.Sneak set value true
execute unless score @s actm.sneak matches 1.. run data modify entity @e[limit=1,sort=nearest,tag=actm.monitor] data.States.Sneak set value false

execute if score @s actm.sneak matches 1.. run scoreboard players reset @s actm.sneak