-- blightmud plugin for tintin style command repeating.

local TTSCR = {}


if TTSCR['aliases'] then
    TTSCR['aliases'].clear()
else
    TTSCR['aliases'] = alias.add_group()
end

-- for w in str:gmatch("([^,]+)") do print(w) end

function TTSCRprocess(matches)
    count = tonumber(matches[2])
    string = matches[3]
    cmds = {}

    for v in str:gmatch("([^;]+)") do
        table.insert(cmds, v)
    end


    for i = 1, count do
        for _,v in ipairs(cmds) do
            mud.send(v)
        end
    end
end

TTSCR['aliases']:add([==[^#(\d+) (.*$)]==], TTSCRprocess)

blight.output("... --> tintin style completion loaded")
