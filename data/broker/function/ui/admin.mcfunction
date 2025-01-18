# Page header
tellraw @s [{"text":""}]
tellraw @s [\
    {"text":"<Back]","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/trigger broker set 1"}},\
    {"text":"                  ❂ Broker Admin Panel ❂             ","color":"#ff1133"},\
    {"text":"[Page 2>","color":"#dcf7f6",\
        "clickEvent":{"action":"run_command","value":"/function broker:ui/admin/admin_2"}}\
]

tellraw @s [{"text":"=====================================================","color":"#880022"}]

tellraw @s {"text":"","color":"#666666","extra":[{"text":"["},\
    {"text":"❂","color":"#ba5f2f","clickEvent":{"action":"run_command","value":"/function admin:broker/give_copper_token"}},{"text":" "},\
    {"text":"❂","color":"#d1ccbc","clickEvent":{"action":"run_command","value":"/function admin:broker/give_silver_token"}},{"text":" "},\
    {"text":"❂","color":"#ffde4d","clickEvent":{"action":"run_command","value":"/function admin:broker/give_gold_token"}},{"text":" "},\
    {"text":"❂","color":"#dcf7f6","clickEvent":{"action":"run_command","value":"/function admin:broker/give_platinum_token"}},{"text":" "},\
    {"text":"❂","color":"#9ec0ff","clickEvent":{"action":"run_command","value":"/function admin:broker/give_mithril_token"}},\
    {"text":"]"},{"text":" - Spawn token","color":"gray"}]}