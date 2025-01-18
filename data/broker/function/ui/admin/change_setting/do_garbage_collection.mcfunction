

scoreboard players add .do_garbage_collection zz.broker.globalvar.settings 1
execute if score .do_garbage_collection zz.broker.globalvar.settings matches 2.. run scoreboard players set .do_garbage_collection zz.broker.globalvar.settings 0

function broker:ui/admin/admin_2