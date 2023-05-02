#alias entity monitor @e[limit=1,sort=nearest,tag=actm.monitor]

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

tellraw @s "Speed: "

tellraw @s ["  X: ",{"nbt":"data.Speed.X","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"},","]
tellraw @s ["  Y: ",{"nbt":"data.Speed.Y","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"},","]
tellraw @s ["  Z: ",{"nbt":"data.Speed.Z","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"},","]
tellraw @s ["  XZ: ",{"nbt":"data.Speed.XZ","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"},","]
tellraw @s ["  Movement: ",{"nbt":"data.Speed.Movement","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"},","]
tellraw @s ["  XZ_Max: ",{"nbt":"data.Speed.XZ_Max","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"},","]

tellraw @s "States: "
tellraw @s ["  Sneak: ",{"nbt":"data.States.Sneak","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"}]
tellraw @s ["  Move: ",{"nbt":"data.States.Move","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"}]
tellraw @s ["  Hover: ",{"nbt":"data.States.Hover","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"}]
# tellraw @s ["  Swivel: ",{"nbt":"data.States.Swivel","entity": "@e[limit=1,sort=nearest,tag=actm.monitor]"}]