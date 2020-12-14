title @a title {"text": "【寿】","color": "yellow"}
title @a subtitle [{"selector": "@a[scores={marriage=1}]","color": "blue"},{"text": "様 ","color": "white"},{"selector": "@a[scores={marriage=2}]","color": "red"},{"text": "様 ","color": "white"},{"text": "  結婚","color": "white"}]

#ring
give @a[scores={marriage=1..2}] minecraft:diamond{display:{Name:'{"text":"結婚指輪","color":"gold"}',Lore:['[{"text":"大切な人との結婚指輪"}]','{"text":"大事にしまっておこう"}']}} 1


#particle
execute positioned -2084 70 248 run function marriage:particle
##パーティクルを出す座標

#firework
schedule function marriage:firework 10t

scoreboard players set @a[scores={marriage=1..2}] marriage 0