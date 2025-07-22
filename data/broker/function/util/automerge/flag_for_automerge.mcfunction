# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"selector":"@s","color":"#777777"},{"text":" > broker:util/automerge/flag_for_automerge","color":"#00AA00"}]
# ---------------------------------------------------------------------------------------

scoreboard objectives add zz.broker.uservar.automerge.flag dummy

# Mark the entry only if user doesn't already have one
execute unless score @s zz.broker.uservar.automerge.flag matches 1.. run \
    scoreboard players add .num_entries zz.broker.uservar.automerge.flag 1

# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 \
    unless score @s zz.broker.uservar.automerge.flag matches 1.. run \
        tellraw @a [\
            {"text":" - .num_entries in zz.broker.uservar.automerge.flag increased [","color":"aqua"},\
            {"score":{"name":".num_entries","objective":"zz.broker.uservar.automerge.flag"}},\
            {"text":"]","color":"aqua"}\
        ]

scoreboard players set @s zz.broker.uservar.automerge.flag 1

# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run \
        tellraw @a [\
            {"text":" - ","color":"aqua"},\
            {"selector":"@s","color":"red"},\
            {"text":" flagged for automerge.","color":"aqua"}\
        ]

# ---------------------------------------------------------------------------------------
# Log Output
execute if score .log_output zz.broker.globalvar.settings matches 1 run tellraw @a \
        [{"selector":"@s","color":"#777777"},{"text":" < broker:util/automerge/flag_for_automerge","color":"#006600"}]
# ---------------------------------------------------------------------------------------