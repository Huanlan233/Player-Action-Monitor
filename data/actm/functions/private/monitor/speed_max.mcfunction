execute store result score @s actm.speedmax store result entity @e[limit=1,sort=nearest,tag=actm.monitor] data.Speed.Movement float 0.00001 run attribute @s generic.movement_speed get 100000
execute store result entity @e[limit=1,sort=nearest,tag=actm.monitor] data.Speed.XZ_Max float 0.0000001 run scoreboard players operation @s actm.speedmax *= #4317 actm.constant

