# AntiMeat v72.1 by StellarayTeam
# Проверка и блокировка режимов игры

# Принудительно ставим режим приключения всем без тега обхода
gamemode adventure @a[gamemode=!adventure,tag=!BypassAntiMeat]

# Уведомления для нарушителей
execute as @a[gamemode=creative,tag=!BypassAntiMeat] run tellraw @s [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"Креативный режим запрещён!","color":"yellow"}]
execute as @a[gamemode=spectator,tag=!BypassAntiMeat] run tellraw @s [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"Режим наблюдателя запрещён!","color":"yellow"}]
execute as @a[gamemode=survival,tag=!BypassAntiMeat] run tellraw @s [{"text":"[AntiMeat] ","color":"red","bold":true},{"text":"Режим выживания запрещён!","color":"yellow"}]

# Принудительная установка режима приключения
execute as @a[gamemode=creative,tag=!BypassAntiMeat] run gamemode adventure @s
execute as @a[gamemode=spectator,tag=!BypassAntiMeat] run gamemode adventure @s
execute as @a[gamemode=survival,tag=!BypassAntiMeat] run gamemode adventure @s