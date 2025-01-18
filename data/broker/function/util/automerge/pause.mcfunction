
scoreboard players set @s zz.broker.uservar.util.automerge.is_paused 1

scoreboard players operation @s zz.broker.uservar.util.automerge.pause.cooldown = @s zz.broker.uservar.setting.automerge.timeout
scoreboard players set @s zz.broker.uservar.util.automerge.pause.strikes 0

title @s actionbar [{"text":"Automerge: ","color":"#666666"},{"text":"Paused","color":"red"}]