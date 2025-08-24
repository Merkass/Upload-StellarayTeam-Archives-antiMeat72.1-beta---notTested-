# AntiMeat v72.1 by StellarayTeam
# Инициализация системы

tellraw @a [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"Система защиты активирована v72.1","color":"yellow"}]
tellraw @a [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"Авторы: StellarayTeam","color":"gray"}]

# Создание scoreboards для отслеживания
scoreboard objectives add antimeat_jump minecraft.custom:minecraft.jump "AntiMeat Jump Detection"
scoreboard objectives add antimeat_drop minecraft.dropped "AntiMeat Drop Detection"
scoreboard objectives add antimeat_damage minecraft.custom:minecraft.damage_dealt_absorbed "AntiMeat PVP Detection"

# Установка начальных значений
scoreboard players set @a antimeat_jump 0
scoreboard players set @a antimeat_drop 0
scoreboard players set @a antimeat_damage 0

tellraw @a [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"Для обхода защиты нужен тег: BypassAntiMeat","color":"aqua"}]