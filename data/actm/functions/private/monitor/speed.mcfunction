execute store result score @s actm.posx run data get entity @s Pos[0] 2000
execute store result score @s actm.posy run data get entity @s Pos[1] 2000
execute store result score @s actm.posz run data get entity @s Pos[2] 2000

# Operation
# X,Y,Z
scoreboard players operation @s actm.speedx = @s actm.posx
scoreboard players operation @s actm.speedy = @s actm.posy
scoreboard players operation @s actm.speedz = @s actm.posz

scoreboard players operation @s actm.speedx -= @s actm._posx
scoreboard players operation @s actm.speedy -= @s actm._posy
scoreboard players operation @s actm.speedz -= @s actm._posz

# 取模
execute if score @s actm.speedx matches ..-1 run scoreboard players operation @s actm.speedx *= #-1 actm.constant
execute if score @s actm.speedy matches ..-1 run scoreboard players operation @s actm.speedy *= #-1 actm.constant
execute if score @s actm.speedz matches ..-1 run scoreboard players operation @s actm.speedz *= #-1 actm.constant

execute store result entity @e[limit=1,sort=nearest,tag=actm.monitor] data.Speed.X float 0.01 run scoreboard players get @s actm.speedx
execute store result entity @e[limit=1,sort=nearest,tag=actm.monitor] data.Speed.Y float 0.01 run scoreboard players get @s actm.speedy
execute store result entity @e[limit=1,sort=nearest,tag=actm.monitor] data.Speed.Z float 0.01 run scoreboard players get @s actm.speedz

# XZ
# 开根
scoreboard players operation @s actm.speedxz = @s actm.speedx
scoreboard players operation @s actm.speedxz *= @s actm.speedx

scoreboard players operation @s actm._speedxz = @s actm.speedz
scoreboard players operation @s actm._speedxz *= @s actm.speedz

scoreboard players operation @s actm.speedxz += @s actm._speedxz
scoreboard players operation @s actm.speedxz *= #100 actm.constant

scoreboard players operation @s sqrt.input = @s actm.speedxz
function sqrt:_3sqrt
scoreboard players operation @s actm.speedxz = @s sqrt.result
execute store result entity @e[limit=1,sort=nearest,tag=actm.monitor] data.Speed.XZ float 0.001 run scoreboard players get @s actm.speedxz

scoreboard players operation @s actm._posx = @s actm.posx
scoreboard players operation @s actm._posy = @s actm.posy
scoreboard players operation @s actm._posz = @s actm.posz