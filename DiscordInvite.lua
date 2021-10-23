local HttpRequest = request or http_request or syn and syn.request
local HttpService = game:GetService("HttpService")

local function Choice(answer)
    print(answer)
    if answer == "Yes" then
HttpRequest({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://discord.com"
    },
    Body = HttpService:JSONEncode({
        cmd = "INVITE_BROWSER",
        args = {
            code = "nil",
        },
        nonce = HS:GenerateGUID(false)
    }),
})
    end
end

local BindableFunction = Instance.new("BindableFunction")BindableFunction.OnInvoke = Choice

game.StarterGui:SetCore("SendNotification",{
 Title = "Invite",
 Text = "Would you like to join the discord server?";
 Icon = "";
 Duration = 5;
 Button1 = "Yes";
 Button2 = "No";
 Callback = BindableFunction;
 })
