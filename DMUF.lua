local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Workspace = game:GetService("Workspace")
local UIS = game:GetService("UserInputService")
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character

wl = true

if wl == true then
	game.Workspace.muffy.Tail.CanCollide = false
			game.Workspace.muffy["Smooth Block Model"].CanCollide = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.muffy.Torso.CFrame * CFrame.new(0,-1,0) -- teleport to muffy
			task.wait(0.3)
			spawn(function()
			local counter = 0 
			while counter ~= 500 do -- when this condition is false(when the counter = 3) the loop will stop
				game.Workspace.muffy.Torso.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-5,0) -- muffy teleport to you
				task.wait(.01)
				counter = counter + 1 -- adding one to the counter after every loop
			end
		end)

			task.wait(0.5)
		spawn(function()
			for _, v in pairs(game:GetService("Workspace"):FindFirstChild("                                                 "):GetDescendants()) do
				if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
					firetouchinterest(game.Workspace.muffy.Torso, v:FindFirstAncestorWhichIsA("Part"),0) -- kills muffy
					firetouchinterest(game.Workspace.muffy.Torso, v:FindFirstAncestorWhichIsA("Part"),1)

				end
			end
		end)
        else
        Chat("|NOT WHITELISTED|")
	end
