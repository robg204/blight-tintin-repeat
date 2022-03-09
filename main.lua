-- blightmud plugin for tintin style command repeating.

local TTSCR = {}


if TTSCR['aliases'] then
    TTSCR['aliases'].clear()
else
    TTSCR['aliases'] = alias.add_group()
end

function TTSCRprocess(matches)
    blight.output("I am being passed a "..type(matches)..".  The value of position two is "..matches[2] or "whoa nil")
    count = tonumber(matches[2])
    --for i = 0, count do
    --    mud.send(matches[3])
    --end
end

TTSCR['aliases']:add([==[^#\d+ .*$]==], TTSCRprocess)

blight.output("... --> tintin style completion loaded")
