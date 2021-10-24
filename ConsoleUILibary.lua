--Credits 2 overk1ll#7661
local lib = {}
local RunService = game:GetService("RunService")

local MTcolors = {
    ["Black"] = {"@@BLACK@@","Black"},
    ["Blue"] = {"@@BLUE@@","Blue"},
    ["Green"] = {"@@GREEN@@","Green"},
    ["Cyan"] = {"@@CYAN@@","Cyan"},
    ["Red"] = {"@@RED@@","Red"},
    ["Magenta"] = {"@@MAGENTA@@","Magenta"},
    ["Brown"] = {"@@BROWN@@","Brown"},
    ["Light Gray"] = {"@@LIGHT_GRAY@@","Light Gray"},
    ["Dark Gray"] = {"@@DARK_GRAY@@","Dark Gray"},
    ["Light Blue"] = {"@@LIGHT_BLUE@@","Light Blue"},
    ["Light Green"] = {"@@LIGHT_GREEN@@","Light Green"},
    ["Light Cyan"] = {"@@LIGHT_CYAN@@","Light Cyan"},
    ["Light Red"] = {"@@LIGHT_RED@@","Light Red"},
    ["Light Magenta"] = {"@@LIGHT_MAGENTA@@","Light Magenta"},
    ["Yellow"] = {"@@YELLOW@@","Yellow"},
    ["White"] = {"@@WHITE@@","White"}
}
local colors = {
    "Black",
    "Blue",
    "Green",
    "Cyan",
    "Red",
    "Magenta",
    "Brown",
    "Light Gray",
    "Dark Gray",
    "Light Blue",
    "Light Green",
    "Light Cyan",
    "Light Red",
    "Light Magenta",
    "Yellow",
    "White"
}

function lib:add(name)
    rconsolename(name)
end

function lib:message(msg)
    rconsoleprint(msg.."\n")
end

function lib:makeSpace()
    rconsoleprint("\n")
end

function lib:infoMessage(msg)
    rconsoleinfo(msg)
end

function lib:warnMessage(msg)
    rconsolewarn(msg)
end

function lib:errorMessage(msg)
    rconsoleerr(msg)
end

function lib:clear()
    rconsoleclear()
end

function lib:setColor(color)
    local canContinue = false
    local colorSelected = ""

    for i,v in pairs(MTcolors) do
        if color == v[2] then
            canContinue = true
            colorSelected = v[1]
            break
        end
    end

    if canContinue and colorSelected ~= "" then
        rconsoleprint(colorSelected)
    end

end

function lib:randomColor()
    return colors[math.random(1,#colors)]
end

function lib:addInput(trigger,callback)
    RunService.RenderStepped:Connect(function()
        local input = rconsoleinput(input)
        if trigger == input then
            callback()
        end
    end)
end

return lib
