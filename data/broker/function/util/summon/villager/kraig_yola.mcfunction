$summon villager ~ ~ ~ {\
    Tags:["token_merchant","kraig_yola"],\
    CustomName:'{"text":"Kraig Yola","color":"dark_green"}',\
    CustomNameVisible:1b,\
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
        profession:"minecraft:shepherd",\
        type:"minecraft:swamp",\
    },\
    Offers:{\
        Recipes:[\
            {maxUses:10000,sell:{id:"minecraft:red_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:orange_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:yellow_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:lime_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:green_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:cyan_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:light_blue_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:blue_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:purple_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:magenta_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:pink_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:brown_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:white_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:light_gray_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:gray_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}},\
            {maxUses:10000,sell:{id:"minecraft:black_wool",count:4},buy:{id:"minecraft:player_head",count:1,components:$(silver_token_component)}}\
        ]\
    }\
}
