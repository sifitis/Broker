$summon villager ~ ~ ~ {\
    Tags:["token_merchant","testing_terry"],\
    CustomName:'{"text":"Testing Terry","color","dark_green"}',\
    PersistenceRequired:1b,\
    CanPickUpLoot:0b,\
    Health:1000000f,\
    attributes:[\
        {id:"minecraft:jump_strength",base:0},\
        {id:"minecraft:knockback_resistance",base:1000000},\
        {id:"minecraft:max_health",base:1000000},\
        {id:"minecraft:movement_speed",base:0},\
        {id:"minecraft:step_height",base:0},\
        {id:"minecraft:burning_time",base:0}\
    ],\
    VillagerData:{\
        level:5,\
        profession:"minecraft:butcher",\
        type:"minecraft:savanna",\
    },\
    Offers:{\
        Recipes:[\
            {maxUses:10000,sell:{id:"minecraft:grass_block",count:5},buy:{id:"minecraft:player_head",count:1,components:$(gold_token_component)}}\
        ]\
    }\
}
