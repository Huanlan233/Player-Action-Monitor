execute store result score @s actm.__speedxz__ run data get entity @e[limit=1,sort=nearest,tag=actm.monitor] data.Speed.XZ 10

execute if score @s actm.__speedxz__ matches 1.. run data modify entity @e[limit=1,sort=nearest,tag=actm.monitor] data.States.Move set value true
execute unless score @s actm.__speedxz__ matches 1.. run data modify entity @e[limit=1,sort=nearest,tag=actm.monitor] data.States.Move set value false