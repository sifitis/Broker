


# Set first line aside in placeholder variable, then process the rest in reverse order
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 1000000 run scoreboard players set @s zz.broker.uservar.setting.automerge.strikes -12345
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 4 run scoreboard players set @s zz.broker.uservar.setting.automerge.strikes 1000000
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 3 run scoreboard players set @s zz.broker.uservar.setting.automerge.strikes 4
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 2 run scoreboard players set @s zz.broker.uservar.setting.automerge.strikes 3
execute if score @s zz.broker.uservar.setting.automerge.strikes matches 1 run scoreboard players set @s zz.broker.uservar.setting.automerge.strikes 2

# Correct the first line
execute if score @s zz.broker.uservar.setting.automerge.strikes matches -12345 run scoreboard players set @s zz.broker.uservar.setting.automerge.strikes 1

function broker:ui/settings