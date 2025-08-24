# AntiMeat v72.1 by StellarayTeam
# Проверка и блокировка PVP

# Обнаружение нанесения урона игроками без тега обхода
execute as @a[scores={antimeat_damage=1..},tag=!BypassAntiMeat] run tellraw @s [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"PVP запрещён!","color":"yellow"}]

# Лечение всех игроков для отмены урона
execute as @a[scores={antimeat_damage=1..},tag=!BypassAntiMeat] run effect give @a minecraft:instant_health 1 5 true

# Наказание нападающего - телепорт назад и слабость
execute as @a[scores={antimeat_damage=1..},tag=!BypassAntiMeat] at @s run tp @s ~ ~1 ~
execute as @a[scores={antimeat_damage=1..},tag=!BypassAntiMeat] run effect give @s minecraft:weakness 5 2 true
execute as @a[scores={antimeat_damage=1..},tag=!BypassAntiMeat] run effect give @s minecraft:slowness 3 1 true

# Сброс счётчика урона
scoreboard players set @a antimeat_damage 0