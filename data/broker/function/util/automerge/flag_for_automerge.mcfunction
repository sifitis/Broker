
scoreboard objectives add zz.broker.uservar.automerge.flag dummy

# Mark the entry only if user doesn't already have one
execute unless score @s zz.broker.uservar.automerge.flag matches 1.. run \
    scoreboard players add .num_entries zz.broker.uservar.automerge.flag 1

scoreboard players set @s zz.broker.uservar.automerge.flag 1