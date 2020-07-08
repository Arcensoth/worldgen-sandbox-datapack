gamemode spectator @a[tag=!wgs.init]
effect give @a[tag=!wgs.init] minecraft:night_vision 999999 1 true
execute as @a[tag=!wgs.init] in wgs:dungeon run teleport @s 0 128 0
tag @a[tag=!wgs.init] add wgs.init
