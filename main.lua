-- blightmud plugin for tintin style command repeating.

local TTSCR = {}


if TTSCR['aliases'] then
    TTSCR['aliases'].clear()
else
    TTSCR['aliases'] = alias.add_group()
end

function TTSCRprocess(matches)
    count = tonumber(matches[2])
    for i = 1, count do
        mud.send(matches[3])
    end
end

TTSCR['aliases']:add([==[^#(\d+) (.*$)]==], TTSCRprocess)

blight.output("... --> tintin style completion loaded")
