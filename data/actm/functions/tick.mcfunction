execute as @a unless entity @e[limit=1,sort=nearest,tag=actm.monitor] run summon marker ~ ~ ~ {data:{},Tags:["actm.monitor"]}

execute as @a[tag=actm.monitored] at @s run function actm:private/monitor

execute as @a[tag=actm.debug] at @s run function actm:private/debug_msg

execute as @e[limit=1,sort=nearest,tag=actm.monitor] unless entity @p[limit=1] run kill @s