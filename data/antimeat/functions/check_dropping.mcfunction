# AntiMeat v72.1 by StellarayTeam
# Проверка и блокировка выбрасывания предметов

# Обнаружение выбрасывания предметов у игроков без тега обхода
execute as @a[scores={antimeat_drop=1..},tag=!BypassAntiMeat] run tellraw @s [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"Выбрасывание предметов запрещено!","color":"yellow"}]

# Удаление выброшенных предметов от игроков без тега обхода
execute as @a[scores={antimeat_drop=1..},tag=!BypassAntiMeat] at @s run kill @e[type=item,distance=..5]

# Наказание - кратковременное ослепление
execute as @a[scores={antimeat_drop=1..},tag=!BypassAntiMeat] run effect give @s minecraft:blindness 2 1 true

# Сброс счётчика выбрасывания
scoreboard players set @a antimeat_drop 0