
# short snippet of code to calc the new amounts of each token

scoreboard players operation N zz.broker.util.automerge.merge = S1 zz.broker.util.automerge.merge
scoreboard players operation N zz.broker.util.automerge.merge /= .64 zz.broker.const
scoreboard players operation G1 zz.broker.util.automerge.merge += N zz.broker.util.automerge.merge
scoreboard players operation N zz.broker.util.automerge.merge *= .64 zz.broker.const
scoreboard players operation S1 zz.broker.util.automerge.merge -= N zz.broker.util.automerge.merge