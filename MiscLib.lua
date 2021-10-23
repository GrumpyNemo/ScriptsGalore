local misc = {}

function misc:SendNotif(var1,var2,dur)
	if not SubFolder_Ui:FindFirstChild("NotifGui") then
		game:GetObjects("rbxassetid://7544848857")[1].Parent = nil
	end

	local NotifGui = SubFolder_Ui["NotifGui"]
	local NotifGuiClone = NotifGui:Clone()
	local Frame = NotifGuiClone.Frame
	local Title = Frame.Title
	local Description = Frame.Description

	NotifGuiClone.Parent = game.CoreGui
	Title.Text = var1
	Description.Text = var2
	Frame.Position = UDim2.new(1.35,0,0.8,0)
	wait(.1)
	Frame:TweenPosition(UDim2.new(.92,0,0.8,0))
	wait(dur)
	Frame:TweenPosition(UDim2.new(1.35,0,0.8,0))
	wait(1)
	Frame.Parent:Destroy()
end

function misc:Print(a)
    print(a)
end

return misc
