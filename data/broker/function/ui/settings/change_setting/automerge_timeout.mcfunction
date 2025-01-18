


# Set first line aside in placeholder variable, then process the rest in reverse order
execute if score @s zz.broker.uservar.setting.automerge.timeout matches ..-1 run scoreboard players set @s zz.broker.uservar.setting.automerge.timeout 9999999
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 6000 run scoreboard players set @s zz.broker.uservar.setting.automerge.timeout -1
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 2400 run scoreboard players set @s zz.broker.uservar.setting.automerge.timeout 6000
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 1200 run scoreboard players set @s zz.broker.uservar.setting.automerge.timeout 2400
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 600 run scoreboard players set @s zz.broker.uservar.setting.automerge.timeout 1200

# Correct the first line
execute if score @s zz.broker.uservar.setting.automerge.timeout matches 9999999.. run scoreboard players set @s zz.broker.uservar.setting.automerge.timeout 600

function broker:ui/settings