
# This is a simple debug function that clears and objective, recreates it, then sets the sidebar display
# Only works with dummy objectives
# args: [obj] The name of the scoreboard objective

$scoreboard objectives remove $(obj)
$scoreboard objectives add $(obj) dummy
$scoreboard objectives setdisplay sidebar $(obj)