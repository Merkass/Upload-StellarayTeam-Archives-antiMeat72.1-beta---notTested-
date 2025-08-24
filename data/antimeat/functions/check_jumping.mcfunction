# AntiMeat v72.1 by StellarayTeam
# Проверка и блокировка прыжков

# Обнаружение прыжков у игроков без тега обхода
execute as @a[scores={antimeat_jump=1..},tag=!BypassAntiMeat] run tellraw @s [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"Прыжки запрещены!","color":"yellow"}]

# Наказание за прыжки - телепорт вниз и замедление
execute as @a[scores={antimeat_jump=1..},tag=!BypassAntiMeat] at @s run tp @s ~ ~-0.5 ~
execute as @a[scores={antimeat_jump=1..},tag=!BypassAntiMeat] run effect give @s minecraft:slowness 3 2 true
execute as @a[scores={antimeat_jump=1..},tag=!BypassAntiMeat] run effect give @s minecraft:jump_boost 3 128 true

# Сброс счётчика прыжков
scoreboard players set @a antimeat_jump 0