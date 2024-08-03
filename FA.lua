local Settings = {
    Prefix = ".", 
    Version = "1.0.2", 
    
    CommandKey = "BackSlash", -- see: "https://developer.roblox.com/en-us/api-reference/enum/KeyCode" for all key codes
    GuiLogo = "http://www.roblox.com/asset/?id=5234318900"
}



--/ Important checks 'n waiting for stuff to load or smthing

repeat
    wait()
until game:GetService("Players").LocalPlayer ~= nil

if not game:GetService("Players").LocalPlayer.Character then
    game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
end


for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "OverflowScreenGui" then
        v:Destroy()
    end
end



--/ Variables

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Workspace = game:GetService("Workspace")
local UIS = game:GetService("UserInputService")
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character


local Admin = {
    Cmds = {},  
    Events = {}, 


    NotificationFrameAmount = 0
}



--/ Main Gui Creation 'n it's properties

local OverflowScreenGui = Instance.new("ScreenGui")
local Intro = Instance.new("Folder")
local TitleLabelIntro = Instance.new("TextLabel")
local VersionLabelIntroClipDescendants = Instance.new("TextLabel")
local VersionLabelIntro = Instance.new("TextLabel")
local IntroBlurEffect = Instance.new("BlurEffect")

local Main = Instance.new("Folder")
local FrameCmdBar = Instance.new("Frame")
local ArrowThing = Instance.new("TextLabel")
local CmdBar = Instance.new("TextBox")
local line = Instance.new("Frame")
local Cmdlist = Instance.new("ScrollingFrame")
local ExampleCmd = Instance.new("Frame")
local line_2 = Instance.new("Frame")
local CmdNameBtn = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local NotificationFrame = Instance.new("Frame")
local line_3 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local timelabel = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Body = Instance.new("TextLabel")



OverflowScreenGui.Name = "OverflowScreenGui"
OverflowScreenGui.Parent = game:GetService("CoreGui")
OverflowScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Intro.Name = "Intro"
Intro.Parent = OverflowScreenGui

TitleLabelIntro.Name = "TitleLabelIntro"
TitleLabelIntro.Parent = Intro
TitleLabelIntro.AnchorPoint = Vector2.new(0.5, 1)
TitleLabelIntro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabelIntro.BackgroundTransparency = 1.000
TitleLabelIntro.Position = UDim2.new(0.5, 0, 0.5, 0)
TitleLabelIntro.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
TitleLabelIntro.Font = Enum.Font.SourceSansBold
TitleLabelIntro.Text = "Fedora Admin"
TitleLabelIntro.TextColor3 = Color3.fromRGB(233, 252, 252)
TitleLabelIntro.TextSize = 45.000
TitleLabelIntro.TextTransparency = 1.000

VersionLabelIntroClipDescendants.Name = "VersionLabelIntroClipDescendants"
VersionLabelIntroClipDescendants.Parent = Intro
VersionLabelIntroClipDescendants.AnchorPoint = Vector2.new(0.5, 0)
VersionLabelIntroClipDescendants.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionLabelIntroClipDescendants.BackgroundTransparency = 1.000
VersionLabelIntroClipDescendants.ClipsDescendants = true
VersionLabelIntroClipDescendants.Position = UDim2.new(0.5, 0, 0.5, 0)
VersionLabelIntroClipDescendants.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
VersionLabelIntroClipDescendants.Font = Enum.Font.GothamSemibold
VersionLabelIntroClipDescendants.Text = ""
VersionLabelIntroClipDescendants.TextColor3 = Color3.fromRGB(205, 255, 233)
VersionLabelIntroClipDescendants.TextSize = 30.000
VersionLabelIntroClipDescendants.TextStrokeTransparency = 0.900
VersionLabelIntroClipDescendants.TextWrapped = true

VersionLabelIntro.Name = "VersionLabelIntro"
VersionLabelIntro.Parent = VersionLabelIntroClipDescendants
VersionLabelIntro.AnchorPoint = Vector2.new(0.5, 1)
VersionLabelIntro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionLabelIntro.BackgroundTransparency = 1.000
VersionLabelIntro.Position = UDim2.new(0.5, 0, 0, 0)
VersionLabelIntro.Size = UDim2.new(1, 0, 1, 0)
VersionLabelIntro.Font = Enum.Font.GothamSemibold
VersionLabelIntro.Text = "V1.0.1"
VersionLabelIntro.TextColor3 = Color3.fromRGB(205, 255, 233)
VersionLabelIntro.TextSize = 30.000
VersionLabelIntro.TextTransparency = 0
VersionLabelIntro.TextStrokeTransparency = 0.9
VersionLabelIntro.TextWrapped = true

Main.Name = "Main"
Main.Parent = OverflowScreenGui

FrameCmdBar.Name = "FrameCmdBar"
FrameCmdBar.Parent = Main
FrameCmdBar.AnchorPoint = Vector2.new(1, 1)
FrameCmdBar.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
FrameCmdBar.BorderSizePixel = 0
FrameCmdBar.Position = UDim2.new(1.26699996, 0, 1, 0)
FrameCmdBar.Size = UDim2.new(0.26699999, 0, 0, 25)

ArrowThing.Name = "ArrowThing"
ArrowThing.Parent = FrameCmdBar
ArrowThing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ArrowThing.BackgroundTransparency = 1.000
ArrowThing.Position = UDim2.new(0, 0, -0.0399999991, 0)
ArrowThing.Size = UDim2.new(0.100000001, 0, 0.925000012, 0)
ArrowThing.Font = Enum.Font.GothamBlack
ArrowThing.Text = ">"
ArrowThing.TextColor3 = Color3.fromRGB(255, 255, 255)
ArrowThing.TextSize = 25.000

CmdBar.Name = "CmdBar"
CmdBar.Parent = FrameCmdBar
CmdBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdBar.BackgroundTransparency = 1.000
CmdBar.Position = UDim2.new(0.109999999, 0, 0, 0)
CmdBar.Size = UDim2.new(1, 0, 0.925000012, 0)
CmdBar.ClearTextOnFocus = false
CmdBar.Font = Enum.Font.Code
CmdBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
CmdBar.PlaceholderText = " put Fedora command here"
CmdBar.Text = ""
CmdBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdBar.TextSize = 14.000
CmdBar.TextTransparency = 0.150
CmdBar.TextXAlignment = Enum.TextXAlignment.Left

line.Name = "line"
line.Parent = FrameCmdBar
line.AnchorPoint = Vector2.new(0, 1)
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 1, 0)
line.Size = UDim2.new(1, 0, 0.075000003, 0)

Cmdlist.Name = "-Cmdlist"
Cmdlist.Parent = FrameCmdBar
Cmdlist.Active = true
Cmdlist.AnchorPoint = Vector2.new(0, 1)
Cmdlist.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Cmdlist.BackgroundTransparency = 0.650
Cmdlist.BorderColor3 = Color3.fromRGB(56, 56, 56)
Cmdlist.Position = UDim2.new(1, 0, -0.150000006, 0)
Cmdlist.Size = UDim2.new(1, 0, 0, 221)
Cmdlist.CanvasSize = UDim2.new(0, 0, 20, 0)
Cmdlist.ScrollBarThickness = 5

UIListLayout.Parent = Cmdlist
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

ExampleCmd.Name = "ExampleCmd"
ExampleCmd.Parent = Cmdlist
ExampleCmd.Visible = false
ExampleCmd.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ExampleCmd.BorderSizePixel = 0
ExampleCmd.Size = UDim2.new(0.975000024, 0, 0, 21)

line_2.Name = "line"
line_2.Parent = ExampleCmd
line_2.AnchorPoint = Vector2.new(0, 1)
line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_2.BorderSizePixel = 0
line_2.Position = UDim2.new(0, 0, 1, 0)
line_2.Size = UDim2.new(1, 0, 0.0500000007, 0)

CmdNameBtn.Name = "CmdNameBtn"
CmdNameBtn.Parent = ExampleCmd
CmdNameBtn.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
CmdNameBtn.BackgroundTransparency = 1
CmdNameBtn.BorderColor3 = Color3.fromRGB(56, 56, 56)
CmdNameBtn.Position = UDim2.new(0.045157969, 0, 0.137148857, 0)
CmdNameBtn.Size = UDim2.new(0.95, 0, 0, 13)
CmdNameBtn.Font = Enum.Font.Gotham
CmdNameBtn.Text = ""
CmdNameBtn.TextWrapped = true
CmdNameBtn.TextColor3 = Color3.fromRGB(255, 0, 255)
CmdNameBtn.TextSize = 14.000
CmdNameBtn.TextXAlignment = Enum.TextXAlignment.Left
CmdNameBtn.TextYAlignment = Enum.TextYAlignment.Top

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = Main
NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
NotificationFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
NotificationFrame.BackgroundTransparency = 0.200
NotificationFrame.BorderColor3 = Color3.fromRGB(56, 56, 56)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Position = UDim2.new(0.5, 0, -0.275, 0)
NotificationFrame.Size = UDim2.new(0, 336, 0, 105)

line_3.Name = "line"
line_3.Parent = NotificationFrame
line_3.AnchorPoint = Vector2.new(0, 1)
line_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line_3.BorderSizePixel = 0
line_3.Position = UDim2.new(0, 0, 1, 0)
line_3.Size = UDim2.new(0, 336, 0, 4)

Title.Name = "Title"
Title.Parent = NotificationFrame
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.5, 0, 0.0149999997, 0)
Title.Size = UDim2.new(0.600000024, 0, 0.150000006, 0)
Title.Font = Enum.Font.Gotham
Title.Text = "Title"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 15.000
Title.TextWrapped = true

timelabel.Name = "timelabel"
timelabel.Parent = NotificationFrame
timelabel.BackgroundColor3 = Color3.fromRGB(74, 84, 88)
timelabel.BackgroundTransparency = 1.000
timelabel.BorderColor3 = Color3.fromRGB(74, 84, 88)
timelabel.Position = UDim2.new(0.863610208, 0, 0.74667269, 0)
timelabel.Size = UDim2.new(0, 35, 0, 13)
timelabel.Font = Enum.Font.Gotham
timelabel.Text = ""
timelabel.TextColor3 = Color3.fromRGB(255, 0, 255)
timelabel.TextSize = 13.000

Exit.Name = "Exit"
Exit.Parent = NotificationFrame
Exit.BackgroundColor3 = Color3.fromRGB(197, 0, 0)
Exit.BorderColor3 = Color3.fromRGB(197, 0, 0)
Exit.Position = UDim2.new(0.943475246, 0, 0.0666666701, 0)
Exit.Size = UDim2.new(0, 9, 0, 8)
Exit.Font = Enum.Font.Gotham
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(197, 191, 186)
Exit.TextScaled = true
Exit.TextSize = 100.000
Exit.TextWrapped = true

Body.Name = "Body"
Body.Parent = NotificationFrame
Body.AnchorPoint = Vector2.new(0.5, 0)
Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body.BackgroundTransparency = 1.000
Body.Position = UDim2.new(0.5, 0, 0.300000012, 0)
Body.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
Body.Font = Enum.Font.Gotham
Body.Text = "Body"
Body.TextWrapped = true
Body.TextColor3 = Color3.fromRGB(255, 255, 255)
Body.TextSize = 14.000

IntroBlurEffect.Name = "IntroBlurEffect"
IntroBlurEffect.Parent = game:GetService("Lighting")
IntroBlurEffect.Enabled = true
IntroBlurEffect.Size = 0 -- 10


--/ Functions

function Admin.Notify(subjecttext, bodytext, possibletimer) -- possibletimer[1] = starttime in seconds, possibletimer[2] = endtime in seconds, possibletimer[3] = number to decrease timer with
    spawn(function()
        local Notification = NotificationFrame:Clone()
        Notification.Name = "-NewNotification"
        Notification.Visible = false
        Notification.Parent = Main
        local NotificationRemove = false

        Notification.BackgroundTransparency = 1
        for i, v in pairs(Notification:GetDescendants()) do
            if v:IsA("GuiObject") and v.Visible == true then
                if v.ClassName ~= "ImageLabel" and v.ClassName ~= "ImageButton" then
                    v.BackgroundTransparency = 1
                elseif v.ClassName == "CmdNameBtn" or v.ClassName == "TextButton" and v.Name ~= "timelabel" then
                    v.BackgroundTransparency = 1
                    v.TextTransparency = 1
                    v.TextStrokeTransparency = 1
                else
                    v.ImageTransparency = 1
                end
            end
        end

        Notification:WaitForChild("Title").Text = subjecttext
        Notification:WaitForChild("Body").Text = bodytext

        if Notification.Body.TextFits == false then
            Notification.Body.TextScaled = true
        end
        
        Admin.NotificationFrameAmount = Admin.NotificationFrameAmount + 1 

        Notification.Visible = true

        game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.25}):Play()
        game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.45, 0)}):Play()
        
        game:GetService("TweenService"):Create(Notification.Title, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
        game:GetService("TweenService"):Create(Notification.Body, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
        game:GetService("TweenService"):Create(Notification.Exit, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
        game:GetService("TweenService"):Create(Notification.line, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
        
        Notification.Exit.MouseButton1Down:Connect(function()
            NotificationRemove = true
        end)

        if typeof(possibletimer) == "table" and typeof(possibletimer[1]) == "number" and typeof(possibletimer[2]) == "number" and typeof(possibletimer[3]) == "number" then
            spawn(function()
                
                for i = possibletimer[1], possibletimer[2], -possibletimer[3] do
                    if Notification:FindFirstChild("timelabel") then
                        Notification.timelabel.Text = "(" .. i .. ")"
                    else
                        break
                    end
                    
                    if NotificationRemove == false and Admin.NotificationFrameAmount <= 1 then
                        wait(possibletimer[3])
                    else
                        break
                    end
                end

                if NotificationRemove == false then
                    NotificationRemove = true 
                end
            end)
        end

        repeat
            wait()
        until NotificationRemove == true or OverflowScreenGui.Parent ~= game:GetService("CoreGui") or Admin.NotificationFrameAmount > 1
        
        Admin.NotificationFrameAmount = Admin.NotificationFrameAmount - 1

        game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, -0.5, 0)}):Play()
        wait(0.5)

        Notification:Destroy()
    end)
end

function Admin.GetShortenedPlrFromName(name)
    name = string.lower(tostring(name))
    
    if not game:GetService("Players"):FindFirstChild("me") and name == "me" or game:GetService("Players"):FindFirstChild("me") and game:GetService("Players"):FindFirstChild("me").ClassName ~= "Player" and name == "me" then
        return {LocalPlayer}
    end
    if not game:GetService("Players"):FindFirstChild("all") and name == "all" or game:GetService("Players"):FindFirstChild("all") and game:GetService("Players"):FindFirstChild("all").ClassName ~= "Player" and name == "all" then
        return game:GetService("Players"):GetPlayers()
    end
    if not game:GetService("Players"):FindFirstChild("others") and name == "others" or game:GetService("Players"):FindFirstChild("others") and game:GetService("Players"):FindFirstChild("others").ClassName ~= "Player" and name == "others" then
        name = game:GetService("Players"):GetPlayers()
        for i, v in pairs(name) do
            if v == LocalPlayer then
                table.remove(name, i)
            end
        end
        return name
    end
    
    for i, v in pairs(game.Players:GetPlayers()) do
        if string.lower(string.sub(v.Name, 1, #name)) == name then
            return {v}
        end
    end

    return nil
end


--/ Scripting: Intro

game:GetService("TweenService"):Create(IntroBlurEffect, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 5}):Play()
wait(0.35)

game:GetService("TweenService"):Create(TitleLabelIntro, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 0, TextStrokeTransparency = 0.9}):Play()
wait(0.3)
VersionLabelIntro.Text = "V" .. Settings.Version
game:GetService("TweenService"):Create(VersionLabelIntro, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 1, 0)}):Play()
wait(1.5)

game:GetService("TweenService"):Create(TitleLabelIntro, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
wait(0.25 / 4 * 2.75)
game:GetService("TweenService"):Create(VersionLabelIntro, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
game:GetService("TweenService"):Create(IntroBlurEffect, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = 0}):Play()
wait(0.3)

Admin.Notify("Welcome", "Welcome to Fedora Admin, brought to you by: C0OL1kID2 and 14anz_COOL. Prefix is: " .. Settings.Prefix, 7.5)


wait(2.0)

loadstring(game:HttpGet("https://pastebin.com/raw/xfJ1dCLn"))()

function Chat(Message)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
end

local localplayer = game.Players.LocalPlayer.Name

if game.Players.LocalPlayer.Name == "Grantwebb09" then
wl = true
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://237866621"
sound.Parent = game:GetService("SoundService")
sound:Play()
end
if game.Players.LocalPlayer.Name == localplayer then
wl = true
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://237866621"
sound.Parent = game:GetService("SoundService")
sound:Play()
end
-- Player whitelisted
if  game.Players.LocalPlayer.Name == "Epichax911" or game.Players.LocalPlayer.Name == "AngAlanis13" then
wl = true
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://237866621"
sound.Parent = game:GetService("SoundService")
sound:Play()
elseif wl == false then
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://237866621"
sound.Parent = game:GetService("SoundService")
sound:Play()
end


local players = game:GetService("Players")
local plr = players.LocalPlayer
Lagging = true
Loopkill = true
Loopvoid = false
clg = false
ere = false
lag = false
godmode2 = false
skill = false
loopskillall = false
day = false
night = false
lcb = false
grc = false
antib = false
hide = false
Anti = false

local function getChar()
    return plr.Character
end

local function getBp()
    return plr.Backpack
end

local function getPlr(str)
    for i,v in pairs(players:GetPlayers()) do
        if v.Name:lower():match(str) or v.DisplayName:lower():match(str) then
            return v
        end
    end
end


local mainfake
local mainfake = Instance.new("Part",game.Chat)

local netless_Y = Vector3.new(0, 26, 0)
local v3_101 = Vector3.new(1, 0, 1)
local inf = math.huge
local v3_0 = Vector3.new(0,0,0)
local function getNetlessVelocity(realPartVelocity) --edit this if you have a better netless method
    if (realPartVelocity.Y > 1) or (realPartVelocity.Y < -1) then
        return realPartVelocity * (25.1 / realPartVelocity.Y)
    end
    realPartVelocity = realPartVelocity * v3_101
    local mag = realPartVelocity.Magnitude
    if mag > 1 then
        realPartVelocity = realPartVelocity * 100 / mag
    end
    return realPartVelocity + netless_Y
end
local function replacehum()
    local h = plr.Character:FindFirstChild("Humanoid"):Clone()
    plr.Character:FindFirstChild("Humanoid"):Destroy()
    h.Parent = plr.Character
end

local function align(Part0, Part1, p, r)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
    Part0.CFrame = Part1.CFrame
	local att0 = Instance.new("Attachment", Part0)
	att0.Orientation = r or v3_0
	att0.Position = v3_0
	att0.Name = "att0_" .. Part0.Name
	local att1 = Instance.new("Attachment", Part1)
	att1.Orientation = v3_0 
	att1.Position = p or v3_0
	att1.Name = "att1_" .. Part1.Name

	local apd = Instance.new("AlignPosition", att0)
	apd.ApplyAtCenterOfMass = false
	apd.MaxForce = inf
	apd.MaxVelocity = inf
	apd.ReactionForceEnabled = false
	apd.Responsiveness = 200
	apd.Attachment1 = att1
	apd.Attachment0 = att0
	apd.Name = "AlignPositionRfalse"
	apd.RigidityEnabled = false

	local ao = Instance.new("AlignOrientation", att0)
	ao.MaxAngularVelocity = inf
	ao.MaxTorque = inf
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.Attachment1 = att1
	ao.Attachment0 = att0
	ao.RigidityEnabled = false
    
	if type(getNetlessVelocity) == "function" then
	    local realVelocity = Vector3.new(0,30,0)
        local steppedcon = game:GetService("RunService").Stepped:Connect(function()
            Part0.Velocity = realVelocity
        end)
        local heartbeatcon = game:GetService("RunService").Heartbeat:Connect(function()
            realVelocity = Part0.Velocity
            Part0.Velocity = getNetlessVelocity(realVelocity)
        end)
        Part0.Destroying:Connect(function()
            Part0 = nil
            steppedcon:Disconnect()
            heartbeatcon:Disconnect()
        end)
	end
	
    att0.Orientation = r or v3_0
	att0.Position = v3_0
	att1.Orientation = v3_0 
	att1.Position = p or v3_0
	Part0.CFrame = Part1.CFrame
end

local function attachTool(tool,cf)
    for i,v in pairs(tool:GetDescendants()) do
        if not (v:IsA("BasePart") or v:IsA("Mesh") or v:IsA("SpecialMesh")) then
            v:Destroy()
        end
    end
    wait()
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
            
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
--game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"

tool.Parent = getChar()
--[[
for i,v in pairs(getBp():GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = getChar()
            end
        end
]]--
end

local nc = false
local ncLoop
ncLoop = game:GetService("RunService").Stepped:Connect(function()
	if nc and getChar() ~= nil then
		for _, v in pairs(getChar():GetDescendants()) do
			if v:IsA("BasePart") and v.CanCollide == true then
				v.CanCollide = false
			end
		end
    end
end)

local netsleepTargets = {}
local nsLoop
nsLoop = game:GetService("RunService").Stepped:Connect(function()
    if #netsleepTargets == 0 then return end
    for i,v in pairs(netsleepTargets) do
        if v.Character then
            for i,v in pairs(v.Character:GetChildren()) do
                if v:IsA("BasePart") == false and v:IsA("Accessory") == false then continue end
                if v:IsA("BasePart") then
                    sethiddenproperty(v,"NetworkIsSleeping",true)
                elseif v:IsA("Accessory") and v:FindFirstChild("Handle") then
                    sethiddenproperty(v.Handle,"NetworkIsSleeping",true)
                end
            end
        end
    end
end)

local cc;cc = plr.Chatted:Connect(function(msg)
    local spaceSplit = msg:split(" ")
    if spaceSplit[1] == ".bring" or spaceSplit[1] == "/e bring" then
local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        tool.Grip = CFrame.new(-4,-2,-2)
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15
  end
        getChar().HumanoidRootPart.CFrame = old
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == ".bring2" or spaceSplit[1] == "/e bring2" then
local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        
        if target == nil or tool == nil then return end
        local c = getChar()
	plr.Character = nil
        plr.Character = c
        wait(players.RespawnTime - 0)
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
            
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
tool.Parent = getChar()
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
        local old = c.HumanoidRootPart.CFrame
 tool.AncestryChanged:Wait() 
        getChar().HumanoidRootPart.CFrame = old
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old

        elseif spaceSplit[1] == ".handletouch" or spaceSplit[1] == ".ht" then
local target = getPlr(tostring(spaceSplit[2]):lower())
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)

        
    elseif spaceSplit[1] == ".jail" or spaceSplit[1] == "/e jail" then
    if wl == true then
local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        
        tool.Grip = CFrame.new(-6,-2,-2)
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-500.6249, -295.6214, -484.3573, 0.5995, 0, -0.8004, 0, 1, 0, 0.8004, 0, 0.5995)
        wait(0.3)
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15
  end
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = old
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        else
        Chat("|NOT WHITELISTED|")
	end
	
        elseif spaceSplit[1] == ".digmuf" or spaceSplit[1] == "/e digmuf" then
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
	
	
    elseif spaceSplit[1] == ".boom" or spaceSplit[1] == "/e bm" then
    if wl == true then
local target = getPlr(tostring(spaceSplit[2]):lower())
	game.Workspace.muffy.Tail.CanCollide = false
			game.Workspace.muffy["Smooth Block Model"].CanCollide = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.muffy.Torso.CFrame * CFrame.new(0,-1,0) -- teleport to muffy
			task.wait(0.3)
			spawn(function()
			local counter = 0 
			while counter ~= 500 do -- when this condition is false(when the counter = 3) the loop will stop
				game.Workspace.muffy.Torso.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0) -- muffy teleport to you
				task.wait(.01)
				counter = counter + 1 -- adding one to the counter after every loop
			end
		end)
		getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
			task.wait(0.5)
		spawn(function()
			for _, v in pairs(game:GetService("Workspace"):FindFirstChild("                                                 "):GetDescendants()) do
				if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
					firetouchinterest(game.Workspace.muffy.Torso, v:FindFirstAncestorWhichIsA("Part"),0) -- kills muffy
					firetouchinterest(game.Workspace.muffy.Torso, v:FindFirstAncestorWhichIsA("Part"),1)

				end
			end
		end)
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        else
        Chat("|NOT WHITELISTED|")
	end
        
    elseif spaceSplit[1] == ".charactergoto" or spaceSplit[1] == ".cgoto" then
    if wl == true then
local target = getPlr(tostring(spaceSplit[2]):lower())
game.Workspace.muffy.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.socky.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.girl.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.muffy.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.socky.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.girl.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.muffy.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.socky.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.girl.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        else
        Chat("|NOT WHITELISTED|")
    end
elseif spaceSplit[1] == ".hatmuf" or spaceSplit[1] == ".gh" then
    local c = game.Players.LocalPlayer.Character
local hrp = c.HumanoidRootPart
local h = c.Humanoid
local oldcframe = hrp.CFrame

local muffy = workspace.muffy

if c:FindFirstChildWhichIsA("Accessory") then
    spawn(function()
    while task.wait() do
        hrp.CFrame = muffy:FindFirstChild("Head").CFrame
    end
    end)
    wait(.5)
    h:Destroy()
    wait(1)
    c:Destroy()
    game.Players.LocalPlayer.CharacterAdded:Connect(function(c)
        task.wait()
        c.HumanoidRootPart.CFrame = oldcframe
        end)
    end

	elseif spaceSplit[1] == ".loopcharactergoto" or spaceSplit[1] == ".loopcgoto" then
    if wl == true then
local target = getPlr(tostring(spaceSplit[2]):lower())
clg = true
repeat wait()
game.Workspace.muffy.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.socky.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        game.Workspace.girl.Torso.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        until clg == false
        else
        Chat("|NOT WHITELISTED|")
	end
	
	elseif spaceSplit[1] == ".unloopcharactergoto" or spaceSplit[1] == ".unloopcgoto" then
    if wl == true then
 clg = false
        else
        Chat("|NOT WHITELISTED|")
	end
	
	elseif spaceSplit[1] == ".kick"  then

		    kick = true
local target = getPlr(tostring(spaceSplit[2]):lower())
    repeat wait()
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        game.Players.LocalPlayer.Character.Animate.Disabled = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg%20Resize"))()
wait()
if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)

        target.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1.5)
        tool.AncestryChanged:Wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 99, 0)

			local power = 9999 -- 9999999999999999999999999999999999

			game:GetService('RunService').Stepped:connect(function()
				game.Players.LocalPlayer.Character.Head.CanCollide = true
				game.Players.LocalPlayer.Character.UpperTorso.CanCollide = true
				game.Players.LocalPlayer.Character.LowerTorso.CanCollide = true
				game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
			end)
			wait(.1)
			local bambam = Instance.new("BodyThrust")
			bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			bambam.Force = Vector3.new(power,999999999999999999999999999999999,power)
			bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        until target == nil or tool == nil  
        
        
    elseif spaceSplit[1] == ".givetool" or spaceSplit[1] == "/e givetool" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
        game.Players.LocalPlayer.Character.Head:Destroy()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-1,0,1)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-99999999,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = old
        target.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1.5)
        --game.Players.LocalPlayer.Character.Torso:Destroy()
        --game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
        game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
        game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
        game.Players.LocalPlayer.Character.LeftHand:Destroy()
        game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
        game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
        game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
        game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()

        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
    elseif spaceSplit[1] == ".attach" or spaceSplit[1] == "/e attach" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
        tool.AncestryChanged:Wait()
        
        elseif spaceSplit[1] == ".infolog"  or spaceSplit[1] == ".il"  or spaceSplit[1] == "/e infolog" or spaceSplit[1] == "/e il" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        		local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1273802616"
sound.Parent = game:GetService("SoundService")
sound:Play()

-- just math stuff dont mess with this
local ip = math.random(100,200) -- if tagging alot do (40,100)
local ipp = math.random(50,100)
local ippp = math.random(50,100)
local ipppp = math.random(100,200)

game.StarterGui:SetCore("SendNotification", {
Title = "Fedora Ip Logger"; 
Text = "Player: "..target.Name.." Ip: "..ip.."."..ipp.."."..ippp.."."..ipppp..""; 
})
        
     elseif spaceSplit[1] == ".loopkill"  or spaceSplit[1] == ".lk"  or spaceSplit[1] == "/e lk" or spaceSplit[1] == "/e loopkill" then
        Loopkill = true
        repeat wait()
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
        
game.Players.LocalPlayer.Character.Humanoid.Health = -60000
local prt=Instance.new("Model", workspace);
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        wait(0.7)
        
        until Loopkill == false
        
        elseif spaceSplit[1] == ".unloopkill"  or spaceSplit[1] == ".unlk"  or spaceSplit[1] == "/e unlk" or spaceSplit[1] == "/e unloopkill" then
        Loopkill = false
        
        elseif spaceSplit[1] == ".lag"  or spaceSplit[1] == ".lagserver" then
        if wl == true then
        lag = true
        repeat wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(253.0137, 6.5012, -124.7011, 0.5827, -0.7316, 0.3539, 0, 0.4354, 0.9002, -0.8127, -0.5245, 0.2537)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg%20Resize"))()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(253.0137, 6.5012, -124.7011, 0.5827, -0.7316, 0.3539, 0, 0.4354, 0.9002, -0.8127, -0.5245, 0.2537)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/hat%20%2B%20head%20resize"))();
        wait(1)
        
        until lag == false
        else
Chat("|NOT WHITELISTED|")
end
        
         elseif spaceSplit[1] == ".unlag"  or spaceSplit[1] == ".unlagserver" then
        if wl == true then
        lag = false
        else
Chat("|NOT WHITELISTED|")
end
elseif spaceSplit[1] == ".voidmuf" or spaceSplit[1] == ".vmuf" then
    local c = game.Players.LocalPlayer.Character
local hrp = c.HumanoidRootPart
local oldcframe = hrp.CFrame
local muffy = workspace.muffy
repeat
    task.wait()
    hrp.CFrame = muffy.Torso.CFrame
until isnetworkowner(muffy.Torso)
muffy.Torso.CFrame = CFrame.new(99999,99999,99999)

        elseif spaceSplit[1] == ".fakelag" or spaceSplit[1] == "/e fakelag" then
        Lagging = true
        getChar().Humanoid.WalkSpeed = 17
        getChar().Humanoid.JumpPower = 60
	repeat wait()
		getChar().HumanoidRootPart.Anchored = true
wait()
        getChar().HumanoidRootPart.Anchored = false
	until Lagging == false
	
	
	elseif spaceSplit[1] == ".unfakelag" or spaceSplit[1] == "/e unfakelag" then
        Lagging = false
        getChar().Humanoid.WalkSpeed = 17
        getChar().Humanoid.JumpPower = 45
        getChar.Character.HumanoidRootPart.Anchored = false
        
     elseif spaceSplit[1] == ".loopcbring" or spaceSplit[1] == ".lcb" then
        Lcb = true
	repeat wait()
local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil or tool == nil then return end
        target.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(5,0,0)
    until Lcb == false
	
	
	elseif spaceSplit[1] == ".unloopcbring" or spaceSplit[1] == ".unlcb" then
        Lcb = false
        
        elseif spaceSplit[1] == ".flash" or spaceSplit[1] == ".party" then
        if wl == true then
        local val = tonumber(spaceSplit[2])
        if val == nil then return end
        ere = true
	repeat wait()
game.Players:Chat("day")
wait(val)
game.Players:Chat("midday")
wait(val)
game.Players:Chat("night")
wait(val)
    until ere == false
    else
    Chat("|NOT WHITELISTED|")
    end
	
	elseif spaceSplit[1] == ".grabcats" or spaceSplit[1] == ".grabc" then
        if wl == true then
        grc = true
	repeat wait()
game.Workspace.muffy.Torso.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1)
        game.Workspace.socky.Torso.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1)
    until grc == false
    else
    Chat("|NOT WHITELISTED|")
        end
    elseif spaceSplit[1] == ".bringmuf" or spaceSplit[1] == ".bmuf" then
        local c = game.Players.LocalPlayer.Character
local hrp = c.HumanoidRootPart
local oldcframe = hrp.CFrame
local muffy = workspace.muffy.Torso
repeat
    task.wait()
    hrp.CFrame = muffy.CFrame
until isnetworkowner(muffy)
muffy.CFrame = oldcframe
hrp.CFrame = oldcframe

	elseif spaceSplit[1] == ".punchfling" or spaceSplit[1] == ".pfling" then
	    local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1273802616"
sound.Parent = game:GetService("SoundService")
sound:Play()

     local HWIntro = Instance.new("ScreenGui")
local H = Instance.new("TextLabel")
local W = Instance.new("TextLabel")
local HOODWINK = Instance.new("TextLabel")

HWIntro.Name = "HWIntro"
HWIntro.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HWIntro.ResetOnSpawn = false

HOODWINK.Parent = HWIntro
HOODWINK.BackgroundColor3 = Color3.new(0, 0, 0)
HOODWINK.BackgroundTransparency = 0.5
HOODWINK.Position = UDim2.new(0.433414042, 570, 0.8, 0)
HOODWINK.Size = UDim2.new(0.149313956, 0, 0.0854700878, 0)
HOODWINK.Font = Enum.Font.GothamBold
HOODWINK.Text = "Dont Hold A Tool For This To Work"
HOODWINK.TextColor3 = Color3.new(1, 1, 1)
HOODWINK.TextScaled = false
HOODWINK.TextSize = 15
HOODWINK.TextWrapped = true

for i = 1,0,-0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

wait(2)

for i = 0,1,0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

HWIntro:Destroy()
local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
tool.Handle.Mesh:Destroy()
tool.Handle.Massless = true
tool.GripPos = Vector3.new(0, 0, -10000)
	    
	elseif spaceSplit[1] == ".ungrabcats" or spaceSplit[1] == ".ungrabc" then
        if wl == true then
         grc = false
    else
    Chat("|NOT WHITELISTED|")
        end

elseif spaceSplit[1] == ".healthglitch" or spaceSplit[1] == ".hg" then
        if wl == true then
         godmode2 = true
         repeat wait(-math.huge)
--if game.Players.LocalPlayer.Character.Humanoid.Health <= 100  then
firetouchinterest(game.Players.LocalPlayer.Character.Humanoid.RootPart, workspace["Button"] ,0) --.Humanoid.RootPart
firetouchinterest(game.Players.LocalPlayer.Character.Humanoid.RootPart, workspace["Button"] ,1)
--end
until godmode2 == false
    else
    Chat("|NOT WHITELISTED|")
        end
elseif spaceSplit[1] == ".unhealthglitch" or spaceSplit[1] == ".unhg" then
        if wl == true then
         godmode2 = false
    else
    Chat("|NOT WHITELISTED|")
        end

elseif spaceSplit[1] == ".ff" or spaceSplit[1] == ".forcefield" then
        if wl == true then

plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == " " then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyUp:connect(function(key)
if key == " " then
jumping = false
end
end)

FF = true

while wait() do
if FF then
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
wait(4.85)
workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
workspace.CurrentCamera.CameraType = Enum.CameraType.Track
end
end
    else
    Chat("|NOT WHITELISTED|")
        end
elseif spaceSplit[1] == ".unff" or spaceSplit[1] == ".unforcefield" then
        if wl == true then
         godmode3 = false
         FF = false
wait()
xos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(4.85)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
workspace.CurrentCamera.CameraType = Enum.CameraType.Track
wait(.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = xos
    else
    Chat("|NOT WHITELISTED|")
    end
	
	
	elseif spaceSplit[1] == ".unflash" or spaceSplit[1] == ".unparty" then
	if wl == true then
	game.Players:Chat("day")
	game.Players:Chat("day")
	game.Players:Chat("day")
	game.Players:Chat("day")
        ere = false
        game.Players:Chat("day")
        game.Players:Chat("day")
        game.Players:Chat("day")
        else
        Chat("|NOT WHITELISTED|")
        end
        
             elseif spaceSplit[1] == ".foreverday" or spaceSplit[1] == ".fday" then
             if wl == true then
        day = true
	repeat wait()
game.Players:Chat("day")
    until day == false
    else
    Chat("|NOT WHITELISTED|")
    end
elseif spaceSplit[1] == ".grabmuf" or spaceSplit[1] == ".gm" then
    local c = game.Players.LocalPlayer.Character
local hrp = c.HumanoidRootPart
local oldcframe = hrp.CFrame
local muffy = workspace.muffy.Torso
repeat
    task.wait()
    hrp.CFrame = muffy.CFrame
until isnetworkowner(muffy)
muffy.CFrame = oldcframe
hrp.CFrame = oldcframe
	
	elseif spaceSplit[1] == ".unforeverday" or spaceSplit[1] == ".unfday" then
	if wl == true then
        day = false
        else
        Chat("|NOT WHITELISTED|")
        end
        
     elseif spaceSplit[1] == ".forevernight" or spaceSplit[1] == ".fnight" then
     if wl == true then
        night = true
	repeat wait()
game.Players:Chat("night")
    until night == false
    else
    Chat("|NOT WHITELISTED|")
    end
	
	
	elseif spaceSplit[1] == ".unforevernight" or spaceSplit[1] == ".unfnight" then
	if wl == true then
        night = false
        else
        Chat("|NOT WHITELISTED|")
        end
        
     elseif spaceSplit[1] == ".kill" or spaceSplit[1] == "/e kill" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        tool.Grip = CFrame.new(-36,-2,50)
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
tool.AncestryChanged:Wait()
game.Players.LocalPlayer.Character.Humanoid.Health = -60000
local prt=Instance.new("Model", workspace);
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt

        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
     elseif spaceSplit[1] == ".skillall" or spaceSplit[1] == ".swordkillall" then
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
			    repeat wait()
firetouchinterest(tool.Handle, v.Character.Humanoid.RootPart, 0)
firetouchinterest(tool.Handle, v.Character.Humanoid.RootPart, 1)
until v.Character.Humanoid.Health <= 0
			end
end

elseif spaceSplit[1] == ".loopskillall" or spaceSplit[1] == ".loopswordkillall" then
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        loopskillall = true
for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
			    repeat wait()
firetouchinterest(tool.Handle, v.Character.Humanoid.RootPart, 0)
firetouchinterest(tool.Handle, v.Character.Humanoid.RootPart, 1)
until loopskillall == false
			end
end
elseif spaceSplit[1] == ".explodemuf" or spaceSplit[1] == ".exmuf" then
    local c = game.Players.LocalPlayer.Character
local hrp = c.HumanoidRootPart
local oldcframe = hrp.CFrame
local muffy = workspace.muffy
repeat
    task.wait()
    hrp.CFrame = muffy.Torso.CFrame
until isnetworkowner(muffy.Torso)
muffy.Head:Destroy()

elseif spaceSplit[1] == ".unloopskillall" or spaceSplit[1] == ".unloopswordkillall" then

        loopskillall = false

	
        elseif spaceSplit[1] == ".skill" or spaceSplit[1] == ".swordkill" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        --local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        repeat wait()
firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 0)
firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 1)
until target.Character.Humanoid.Health <= 0

elseif spaceSplit[1] == ".loopskill" or spaceSplit[1] == ".loopswordkill" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        --local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        skill = true
        repeat wait()
firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 0)
firetouchinterest(tool.Handle, target.Character.Humanoid.RootPart, 1)
until skill == false

elseif spaceSplit[1] == ".unloopskill" or spaceSplit[1] == ".unloopswordkill" then

        skill = false
    
        
    elseif spaceSplit[1] == ".Btools" or spaceSplit[1] == ".btools" then

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

if not getgenv().Network then
	getgenv().Network = {
		BaseParts = {};
		FakeConnections = {};
		Connections = {};
		Output = {
			Enabled = true;
			Prefix = "[NETWORK] ";
			Send = function(Type,Output,BypassOutput)
				if typeof(Type) == "function" and (Type == print or Type == warn or Type == error) and typeof(Output) == "string" and (typeof(BypassOutput) == "nil" or typeof(BypassOutput) == "boolean") then
					if Network["Output"].Enabled == true or BypassOutput == true then
						Type(Network["Output"].Prefix..Output);
					end;
				elseif Network["Output"].Enabled == true then
					error(Network["Output"].Prefix.."Output Send Error : Invalid syntax.");
				end;
			end;
		};
		CharacterRelative = false;
	}

	Network["Output"].Send(print,": Loading.")
	Network["Velocity"] = Vector3.new(14.46262424,14.46262424,14.46262424); --exactly 25.1 magnitude
	Network["RetainPart"] = function(Part,ReturnFakePart) --function for retaining ownership of unanchored parts
		assert(typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(workspace),Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg1 (Part) must be a BasePart which is a descendant of workspace.")
		assert(typeof(ReturnFakePart) == "boolean" or typeof(ReturnFakePart) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg2 (ReturnFakePart) must be a boolean or nil.")
		if not table.find(Network["BaseParts"],Part) then
			if Network.CharacterRelative == true then
				local Character = LocalPlayer.Character
				if Character and Character.PrimaryPart then
					local Distance = (Character.PrimaryPart.Position-Part.Position).Magnitude
					if Distance > 1000 then
						Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
						return false
					end
				else
					Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
					return false
				end
			end
			table.insert(Network["BaseParts"],Part)
			Part.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership applied to BasePart "..Part:GetFullName()..".")
			if ReturnFakePart == true then
				return FakePart
			end
		else
			Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it already active.")
			return false
		end
	end

	Network["RemovePart"] = function(Part) --function for removing ownership of unanchored part
		assert(typeof(Part) == "Instance" and Part:IsA("BasePart"),Network["Output"].Prefix.."RemovePart Error : Invalid syntax: Arg1 (Part) must be a BasePart.")
		local Index = table.find(Network["BaseParts"],Part)
		if Index then
			table.remove(Network["BaseParts"],Index)
			Network["Output"].Send(print,"RemovePart Output: PartOwnership removed from BasePart "..Part:GetFullName()..".")
		else
			Network["Output"].Send(warn,"RemovePart Warning : BasePart "..Part:GetFullName().." not found in BaseParts table.")
		end
	end

	Network["SuperStepper"] = Instance.new("BindableEvent") --make super fast event to connect to
	for _,Event in pairs({RunService.Stepped,RunService.Heartbeat}) do
		Event:Connect(function()
			return Network["SuperStepper"]:Fire(Network["SuperStepper"],tick())
		end)
	end

	Network["PartOwnership"] = {};
	Network["PartOwnership"]["PreMethodSettings"] = {};
	Network["PartOwnership"]["Enabled"] = false;
	Network["PartOwnership"]["Enable"] = coroutine.create(function() --creating a thread for network stuff
		if Network["PartOwnership"]["Enabled"] == false then
			Network["PartOwnership"]["Enabled"] = true --do cool network stuff before doing more cool network stuff
			Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus = LocalPlayer.ReplicationFocus
			LocalPlayer.ReplicationFocus = workspace
			Network["PartOwnership"]["PreMethodSettings"].SimulationRadius = gethiddenproperty(LocalPlayer,"SimulationRadius")
			Network["PartOwnership"]["Connection"] = Network["SuperStepper"].Event:Connect(function() --super fast asynchronous loop
				sethiddenproperty(LocalPlayer,"SimulationRadius",1/0)
				for _,Part in pairs(Network["BaseParts"]) do --loop through parts and do network stuff
					coroutine.wrap(function()
						if Part:IsDescendantOf(workspace) then
							if Network.CharacterRelative == true then
								local Character = LocalPlayer.Character;
								if Character and Character.PrimaryPart then
									local Distance = (Character.PrimaryPart.Position - Part.Position).Magnitude
									if Distance > 1000 then
										Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
										Lost = true;
										Network["RemovePart"](Part)
									end
								else
									Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
								end
							end
							Part.Velocity = Network["Velocity"]+Vector3.new(0,math.cos(tick()*10)/100,0) --keep network by sending physics packets of 30 magnitude + an everchanging addition in the y level so roblox doesnt get triggered and fuck your ownership
						else
							Network["RemovePart"](Part)
						end
					end)()
				end
			end)
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership enabled.")
		else
			Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already enabled.")
		end
	end)
	Network["PartOwnership"]["Disable"] = coroutine.create(function()
		if Network["PartOwnership"]["Connection"] then
			Network["PartOwnership"]["Connection"]:Disconnect()
			LocalPlayer.ReplicationFocus = Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus
			sethiddenproperty(LocalPlayer,"SimulationRadius",Network["PartOwnership"]["PreMethodSettings"].SimulationRadius)
			Network["PartOwnership"]["PreMethodSettings"] = {}
			for _,Part in pairs(Network["BaseParts"]) do
				Network["RemovePart"](Part)
			end
			Network["PartOwnership"]["Enabled"] = false
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership disabled.")
		else
			Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already disabled.")
		end
	end)
	Network["Output"].Send(print,": Loaded.")
end

coroutine.resume(Network["PartOwnership"]["Enable"])

player = game:GetService("Players").LocalPlayer
Gui = player.PlayerGui
Backpack = player.Backpack
Mouse = player:GetMouse()

Parts_Folder = Instance.new("Folder",workspace)

for i, Hat in pairs(player.Character:GetChildren()) do
	if Hat:IsA("Accessory") then
		local Part = Instance.new("Part",Parts_Folder)
		Part.Name = Hat.Name
		Part.Anchored = true
		Part.Size = Hat.Handle.Size
		Part.Position = player.Character.Head.Position + Vector3.new(math.random(-5,5),math.random(-1,1),math.random(-5,5))
		Part:SetAttribute("Moveable",true)
		Part.Material = Enum.Material.SmoothPlastic
		Part.CanCollide = false
        Part.Color = Color3.new(1,0,0)
	end
end


Move_Tool = Instance.new("Tool",Backpack)
Rotate_Tool = Instance.new("Tool",Backpack)
MHandle = Instance.new("Part",Move_Tool)
RHandle = Instance.new("Part",Rotate_Tool)
Mgrabs = Instance.new("Handles",Gui)
Rgrabs = Instance.new("ArcHandles",Gui)
Outline = Instance.new("Highlight")

Move_Tool.Name = "Move"
Move_Tool.CanBeDropped = false

Rotate_Tool.Name = "Rotate"
Rotate_Tool.CanBeDropped = false

MHandle.Name = "Handle"
MHandle.Transparency = 1

RHandle.Name = "Handle"
RHandle.Transparency = 1

Mgrabs.Visible = false
Mgrabs.Color3 = Color3.fromRGB(248, 236, 0)
Mgrabs.Style = "Movement"

Rgrabs.Visible = false

Outline.FillTransparency = 1
Outline.OutlineTransparency = 0

Active_Part = nil

Move_Tool.Equipped:Connect(function()
	if Active_Part ~= nil then
		Mgrabs.Visible = true
		Mgrabs.Adornee = Active_Part
	end
end)

Move_Tool.Unequipped:Connect(function()
	Mgrabs.Visible = false
	Mgrabs.Adornee = nil
end)

Move_Tool.Activated:Connect(function()
	if Mouse.Target:GetAttribute("Moveable") then
		Active_Part = Mouse.Target
		Mgrabs.Visible = true
		Mgrabs.Adornee = Active_Part
		Outline.Parent = Active_Part
	end
end)

Rotate_Tool.Equipped:Connect(function()
	if Active_Part ~= nil then
		Rgrabs.Visible = true
		Rgrabs.Adornee = Active_Part
	end
end)

Rotate_Tool.Unequipped:Connect(function()
	Rgrabs.Visible = false
	Rgrabs.Adornee = nil
end)

Rotate_Tool.Activated:Connect(function()
	if Mouse.Target:GetAttribute("Moveable") then
		Active_Part = Mouse.Target
		Rgrabs.Visible = true
		Rgrabs.Adornee = Active_Part
		Outline.Parent = Active_Part
	end
end)

MOGCFrame = CFrame.new()

Mgrabs.MouseButton1Down:Connect(function()
	MOGCFrame = Active_Part.CFrame
end)

Mgrabs.MouseDrag:Connect(function(knob, pos)
	if knob == Enum.NormalId.Front then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.LookVector * pos
	end
	if knob == Enum.NormalId.Back then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.LookVector * -pos
	end
	if knob == Enum.NormalId.Top then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.UpVector * pos
	end
	if knob == Enum.NormalId.Bottom then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.UpVector * -pos
	end
	if knob == Enum.NormalId.Left then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.RightVector * -pos
	end
	if knob == Enum.NormalId.Right then
		Active_Part.CFrame = MOGCFrame + MOGCFrame.RightVector * pos
	end
end)

ROGCFrame = CFrame.new()

Rgrabs.MouseButton1Down:Connect(function()
	ROGCFrame = Active_Part.CFrame
end)

Rgrabs.MouseDrag:Connect(function(knob, angle)
	if knob == Enum.Axis.Y then
		Active_Part.CFrame = ROGCFrame * CFrame.Angles(0,angle,0)
	end
	if knob == Enum.Axis.X then
		Active_Part.CFrame = ROGCFrame * CFrame.Angles(angle,0,0)
	end
	if knob == Enum.Axis.Z then
		Active_Part.CFrame = ROGCFrame * CFrame.Angles(0,0,angle)
	end
end)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "FE BTools V3 Loaded",
	Text = "Made by 14anz_COOL and D4RKF0RS3R",
	Icon = "rbxassetid://12561999923"
})
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Network Credit:",
	Text = "Enjoy",
	Icon = "rbxassetid://12562053596"
})

HRP = player.Character.HumanoidRootPart

for i, Part in pairs(Parts_Folder:GetChildren()) do
	local Hat = player.Character[Part.Name].Handle
	Hat.AccessoryWeld:Destroy()
    Network.RetainPart(Hat)
	local vbreak = false
	coroutine.wrap(function()
		while task.wait() do
			if vbreak == true then break end
			Hat.CFrame = Part.CFrame
		end
	end)()
	Hat:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
end

player.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
	Parts_Folder:Destroy()
end)  
        
        elseif spaceSplit[1] == ".unLaserArm" or spaceSplit[1] == ".unlaserarm" or spaceSplit[1] == ".unlarm"then
                  local c = getChar()
	plr.Character = nil
        plr.Character = c
        wait(players.RespawnTime - 0)
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
            
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
        local old = c.HumanoidRootPart.CFrame
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == ".gkill" or spaceSplit[1] == ".gripkill" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        tool.Grip = CFrame.new()
  tool.Grip = tool.Handle.CFrame:ToObjectSpace(target.Character.Torso.CFrame):Inverse()
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
repeat
tool.Grip = CFrame.new()
  tool.Grip = tool.Handle.CFrame:ToObjectSpace(target.Character.Torso.CFrame):Inverse()
  firetouchinterest(tool.Handle, target.Character.Torso, 0)
  firetouchinterest(tool.Handle, target.Character.Torso, 1)
until tool.AncestryChanged:Wait()

game.Players.LocalPlayer.Character.Humanoid.Health = -60000
local prt=Instance.new("Model", workspace);
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == ".tkill" or spaceSplit[1] == ".toolkill" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
        --nc = true
local tools = {}
local originalGrips = {}
for _, v in ipairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Handle") then
                table.insert(tools, v)
                table.insert(originalGrips, v.Grip)
                v.Handle.Massless = true
                v.Grip = CFrame.new(5773, 5774, 5773)
                v.Parent = getChar()
            end
end

repeat wait()
    getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
    until target.Character:FindFirstChild("Humanoid").Health <= 0
--power = 0
local hum = getChar():FindFirstChildOfClass("Humanoid")
for i, v in ipairs(tools) do
            if originalGrips[i] then
                v.Grip = originalGrips[i]
            end
        end
        hum:UnequipTools()
 local c = getChar()
	plr.Character = nil
        plr.Character = c
        wait(players.RespawnTime - 0)
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
            
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"

        
        elseif spaceSplit[1] == ".jump" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,2,0)
        --getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,2,0)
        --getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        wait()
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
     
     elseif spaceSplit[1] == ".fastkill" or spaceSplit[1] == "/e fastkill" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
        
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-10,-10000000000000000000000000000000,-10)
        game.Players.LocalPlayer.Character.Humanoid.Health = -60000
local prt=Instance.new("Model", workspace);
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt

        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
    elseif spaceSplit[1] == ".loopvoid"  or spaceSplit[1] == ".lv"  or spaceSplit[1] == "/e lv" or spaceSplit[1] == "/e loopvoid" then
        Loopvoid = true
        repeat wait()
local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-10,-10000000000000000000000000000000,-10)
        local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15
  end
        getChar().HumanoidRootPart.CFrame = old
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        wait(1)
        
        until Loopvoid == false
        
        elseif spaceSplit[1] == ".unloopvoid"  or spaceSplit[1] == ".unlv"  or spaceSplit[1] == "/e unlv" or spaceSplit[1] == "/e unloopvoid" then
        Loopvoid = false
        
        elseif spaceSplit[1] == ".LaserArm" or spaceSplit[1] == ".laserarm" or spaceSplit[1] == ".larm" then
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer

    if not getgenv().Network then
	getgenv().Network = {
		BaseParts = {};
		FakeConnections = {};
		Connections = {};
		Output = {
			Enabled = true;
			Prefix = "[NETWORK] ";
			Send = function(Type,Output,BypassOutput)
				if typeof(Type) == "function" and (Type == print or Type == warn or Type == error) and typeof(Output) == "string" and (typeof(BypassOutput) == "nil" or typeof(BypassOutput) == "boolean") then
					if Network["Output"].Enabled == true or BypassOutput == true then
						Type(Network["Output"].Prefix..Output);
					end;
				elseif Network["Output"].Enabled == true then
					error(Network["Output"].Prefix.."Output Send Error : Invalid syntax.");
				end;
			end;
		};
		CharacterRelative = false;
	}

	Network["Output"].Send(print,": Loading.")
	Network["Velocity"] = Vector3.new(14.46262424,14.46262424,14.46262424); --exactly 25.1 magnitude
	Network["RetainPart"] = function(Part,ReturnFakePart) --function for retaining ownership of unanchored parts
		assert(typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(workspace),Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg1 (Part) must be a BasePart which is a descendant of workspace.")
		assert(typeof(ReturnFakePart) == "boolean" or typeof(ReturnFakePart) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg2 (ReturnFakePart) must be a boolean or nil.")
		if not table.find(Network["BaseParts"],Part) then
			if Network.CharacterRelative == true then
				local Character = LocalPlayer.Character
				if Character and Character.PrimaryPart then
					local Distance = (Character.PrimaryPart.Position-Part.Position).Magnitude
					if Distance > 1000 then
						Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
						return false
					end
				else
					Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
					return false
				end
			end
			table.insert(Network["BaseParts"],Part)
			Part.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership applied to BasePart "..Part:GetFullName()..".")
			if ReturnFakePart == true then
				return FakePart
			end
		else
			Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it already active.")
			return false
		end
	end

	Network["RemovePart"] = function(Part) --function for removing ownership of unanchored part
		assert(typeof(Part) == "Instance" and Part:IsA("BasePart"),Network["Output"].Prefix.."RemovePart Error : Invalid syntax: Arg1 (Part) must be a BasePart.")
		local Index = table.find(Network["BaseParts"],Part)
		if Index then
			table.remove(Network["BaseParts"],Index)
			Network["Output"].Send(print,"RemovePart Output: PartOwnership removed from BasePart "..Part:GetFullName()..".")
		else
			Network["Output"].Send(warn,"RemovePart Warning : BasePart "..Part:GetFullName().." not found in BaseParts table.")
		end
	end

	Network["SuperStepper"] = Instance.new("BindableEvent") --make super fast event to connect to
	for _,Event in pairs({RunService.Stepped,RunService.Heartbeat}) do
		Event:Connect(function()
			return Network["SuperStepper"]:Fire(Network["SuperStepper"],tick())
		end)
	end

	Network["PartOwnership"] = {};
	Network["PartOwnership"]["PreMethodSettings"] = {};
	Network["PartOwnership"]["Enabled"] = false;
	Network["PartOwnership"]["Enable"] = coroutine.create(function() --creating a thread for network stuff
		if Network["PartOwnership"]["Enabled"] == false then
			Network["PartOwnership"]["Enabled"] = true --do cool network stuff before doing more cool network stuff
			Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus = LocalPlayer.ReplicationFocus
			LocalPlayer.ReplicationFocus = workspace
			Network["PartOwnership"]["PreMethodSettings"].SimulationRadius = gethiddenproperty(LocalPlayer,"SimulationRadius")
			Network["PartOwnership"]["Connection"] = Network["SuperStepper"].Event:Connect(function() --super fast asynchronous loop
				sethiddenproperty(LocalPlayer,"SimulationRadius",1/0)
				for _,Part in pairs(Network["BaseParts"]) do --loop through parts and do network stuff
					coroutine.wrap(function()
						if Part:IsDescendantOf(workspace) then
							if Network.CharacterRelative == true then
								local Character = LocalPlayer.Character;
								if Character and Character.PrimaryPart then
									local Distance = (Character.PrimaryPart.Position - Part.Position).Magnitude
									if Distance > 1000 then
										Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")
										Lost = true;
										Network["RemovePart"](Part)
									end
								else
									Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")
								end
							end
							Part.Velocity = Network["Velocity"]+Vector3.new(0,math.cos(tick()*10)/100,0) --keep network by sending physics packets of 30 magnitude + an everchanging addition in the y level so roblox doesnt get triggered and fuck your ownership
						else
							Network["RemovePart"](Part)
						end
					end)()
				end
			end)
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership enabled.")
		else
			Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already enabled.")
		end
	end)
	Network["PartOwnership"]["Disable"] = coroutine.create(function()
		if Network["PartOwnership"]["Connection"] then
			Network["PartOwnership"]["Connection"]:Disconnect()
			LocalPlayer.ReplicationFocus = Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus
			sethiddenproperty(LocalPlayer,"SimulationRadius",Network["PartOwnership"]["PreMethodSettings"].SimulationRadius)
			Network["PartOwnership"]["PreMethodSettings"] = {}
			for _,Part in pairs(Network["BaseParts"]) do
				Network["RemovePart"](Part)
			end
			Network["PartOwnership"]["Enabled"] = false
			Network["Output"].Send(print,"PartOwnership Output : PartOwnership disabled.")
		else
			Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already disabled.")
		end
	end)
	Network["Output"].Send(print,": Loaded.")
end

coroutine.resume(Network["PartOwnership"]["Enable"])

player = game:GetService("Players").LocalPlayer

RA = player.Character["Right Arm"]
Mouse = player:GetMouse()

Torso = player.Character.Torso

RA.Parent = nil
RA.Transparency = 1
RA.Parent = player.Character

NRA = player.Character["Pal Hair"].Handle
NRA.Mesh:Destroy()
NRA.AccessoryWeld:Destroy()
Network.RetainPart(NRA)

Pointing = false

coroutine.wrap(function()
	while task.wait() do
		if Pointing == true then do
				local LA = CFrame.lookAt(Torso.Position + Torso.CFrame.RightVector * 1.5 + Torso.CFrame.UpVector * 0.5,Mouse.Hit.Position)
				NRA.CFrame = LA + LA.LookVector * 0.5
			end else
			NRA.CFrame = RA.CFrame * CFrame.Angles(math.rad(90),0,0)
		end
	end
end)()


Mouse.Button1Down:Connect(function()
	Pointing = true
end)

Mouse.Button1Up:Connect(function()
	Pointing = false
end)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "FE Laser Arm Loaded",
	Text = "Made by Fedora",
	Icon = "rbxassetid://12561999923"
})
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Network Credit:",
	Text = "thanks to 4eyes for network stuff",
	Icon = "rbxassetid://12562053596"
})

function RNG(Min,Max) 
	return math.random(Min*1000000,Max*1000000)/1000000
end

for i,hat in pairs(player.Character:GetChildren()) do
	if hat:IsA("Accessory") and hat ~= NRA.Parent then
		local Handle = hat.Handle
		Handle.AccessoryWeld:Destroy()
        Network.RetainPart(Handle)
		Handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
		coroutine.wrap(function()
			while task.wait() do
				if Pointing == true then do
						Handle.CFrame = (NRA.CFrame + NRA.CFrame.LookVector):Lerp(Mouse.Hit, RNG(0.1,1)) * CFrame.Angles(math.rad(RNG(0,360)),math.rad(RNG(0,360)),math.rad(RNG(0,360)))
					end else
					Handle.CFrame = player.Character.Head.CFrame - Vector3.new(0,20,0)
				end
			end
		end)()
	end
end
    
    
    
    
    elseif spaceSplit[1] == ".void" or spaceSplit[1] == "/e void" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-10,-10000000000000000000000000000000,-10)
        local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15
  end
        getChar().HumanoidRootPart.CFrame = old
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
    elseif spaceSplit[1] == ".punish" or spaceSplit[1] == ".banish" or spaceSplit[1] == ".void2" or spaceSplit[1] == "/e banish" or spaceSplit[1] == "/e void2"or spaceSplit[1] == "/e punish" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
         getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-10,10000000000000000000000000000000,-10)
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
wait(.22)
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15
  end
        getChar().HumanoidRootPart.CFrame = old
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
    elseif spaceSplit[1] == ".skydive" or spaceSplit[1] == ".freefall" or spaceSplit[1] == "/e freefall" or spaceSplit[1] == "/e skydive" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
         getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,7000,0)
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
       wait(.22)
        
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"]:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand:Destroy() --r15
  end
        getChar().HumanoidRootPart.CFrame = old
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
    elseif spaceSplit[1] == ".firework" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
  tool.AncestryChanged:Wait() 
        
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,15,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,25,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,15,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,25,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,15,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,25,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,15,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,25,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,15,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,25,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,15,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,51,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,51,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,51,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,151,0)
        power = 1500
 
game:GetService('RunService').Stepped:connect(function()

end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
wait(0.3)
game.Players.LocalPlayer.Character.Humanoid.Health = -60000
local prt=Instance.new("Model", workspace);
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt

        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
    
    elseif spaceSplit[1] == ".tfling" or spaceSplit[1] == ".toolfling" or spaceSplit[1] == "/e toolfling" or spaceSplit[1] == "/e tfling" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
			local power = 99999 -- change this amount of fling power how much you want fling power you want

			game:GetService('RunService').Stepped:connect(function()
				game.Players.LocalPlayer.Character.Head.CanCollide = true
				game.Players.LocalPlayer.Character.UpperTorso.CanCollide = true
				game.Players.LocalPlayer.Character.LowerTorso.CanCollide = true
				game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
			end)
			wait(.1)
			local bambam = Instance.new("BodyThrust")
			bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			bambam.Force = Vector3.new(power,0,power)
			bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
    
        
    elseif spaceSplit[1] == ".kidnap" or spaceSplit[1] == "/e kidnap" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
tool.AncestryChanged:Wait() 
        wait(0.5)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,0,10)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,0,30)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,0,60)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,0,120)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,0,240)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,0,480)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,0,960)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,0,1920)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-10,-10000000000000000000000000000000,-10)
        game.Players.LocalPlayer.Character.Humanoid.Health = -60000
local prt=Instance.new("Model", workspace);
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
     elseif spaceSplit[1] == ".sink" or spaceSplit[1] == "/e sink" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
tool.AncestryChanged:Wait() 
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-4,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-6,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-8,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-12,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-14,0)
        wait(0.1)
        getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(0,-16,0)
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == ".force" or spaceSplit[1] == "/e force" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        tool.Grip = CFrame.new(0, -20, -10)
        tool.Grip = CFrame.new(0, -20, -10)
        tool.Grip = CFrame.new(0, -20, -10)

        if target == nil or tool == nil then 
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        return end
        
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
 tool.AncestryChanged:Wait() 
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == ".gripvoid" or spaceSplit[1] == ".gvoid" or spaceSplit[1] == ".instakill" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        tool.Grip = CFrame.new(0, 100, 9999) --(0, -10, 600)
        if target == nil or tool == nil then 
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
     tool.AncestryChanged:Wait() 
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15
  end
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == ".cuff" or spaceSplit[1] == "/e cuff" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        tool.Grip = CFrame.new(0, -10, -1)
        tool.Grip = CFrame.new(0, -10, -1)
        tool.Grip = CFrame.new(0, -10, -1)
        if target == nil or tool == nil then 
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
tool.AncestryChanged:Wait() 
        
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == ".gripskydive" or spaceSplit[1] == ".gskydive" or spaceSplit[1] == ".gripfreefall" or spaceSplit[1] == ".gfreefall" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        tool.Grip = CFrame.new(0, -6000, 0) --(0, 0, -1000)
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
tool.AncestryChanged:Wait() 
        
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    --plr.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6
elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    --plr.Character["RightHand"]:Destroy()
    game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15
  end
        
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        

        elseif spaceSplit[1] == ".spin" or spaceSplit[1] == "/e spin" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        local old = getChar().HumanoidRootPart.CFrame
        local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
        if target == nil or tool == nil then return end
        local attWeld = attachTool(tool,CFrame.new(0,0,0))
        attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0)) 
        target.Character.Humanoid.PlatformStand = true
        
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)
        firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)
tool.AncestryChanged:Wait() 
        
        power = 50000
 
game:GetService('RunService').Stepped:connect(function()
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
    elseif spaceSplit[1] == ".Hatspin" or spaceSplit[1] == ".hatspin" or spaceSplit[1] == "/e Hatspin" or spaceSplit[1] == "/e hatspin"  then
        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") then
        if v.Handle:FindFirstChildOfClass("Mesh") or v.Handle:FindFirstChildOfClass("SpecialMesh") then
            if v.Handle:FindFirstChildOfClass("SpecialMesh") then
                v.Handle:FindFirstChildOfClass("SpecialMesh"):Remove()
            end
        end
    end
end

wait(0.5)

local plr = game.Players.LocalPlayer;
local chr = plr.Character;
local hum = chr.Humanoid;
local mov = {};
local mov2 = {};

--made by C0OL1kID2 or D4RKF0RS3R on discord!

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,300,0)
end)
end
end


function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

for _, v in pairs(hum:GetAccessories()) do
	local b = v.Handle;
	b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0);
	b.CanCollide = false;
	b:BreakJoints();
	for _, k in pairs(v:GetChildren()) do
		if not k:IsA'SpecialMesh' and not k:IsA'Part' then
			k:Destroy();
		end
	end
	local still = Instance.new('BodyAngularVelocity', b);
	still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
	still.AngularVelocity = Vector3.new(0, 0, 0);
	local align = Instance.new('AlignPosition', b);
	align.MaxForce = 1000000;
	align.MaxVelocity = math.huge;
	align.RigidityEnabled = false;
	align.ApplyAtCenterOfMass = true;
	align.Responsiveness = 200;
	local a0 = Instance.new('Attachment', b);
	local a1 = Instance.new('Attachment', chr.Head);
	align.Attachment0 = a0;
	align.Attachment1 = a1;
	table.insert(mov, a1);
	table.insert(mov2, still);
end

local par = {};
for _, v in pairs(mov) do
	local parr = Instance.new('Part', workspace);
	parr.Anchored = true;
	parr.Size = Vector3.new(1, 1, 1);
	parr.Transparency = 1;
	parr.CanCollide = false;
	table.insert(par, parr);
end

local rotx = 0;
local rotz = math.pi / 2;
local height = 0;
local heighti = 1;
local offset = 10;
local speed = 10;
local mode = 4;
local angular = Vector3.new(0, 0, 0);
local l = 1;
game['Run Service'].RenderStepped:Connect(function()
	rotx = rotx + speed / 100;
	rotz = rotz + speed / 100;
	l = (l >= 360 and 1 or l + speed);
	
	for i, v in pairs(par) do
		v.CFrame = CFrame.new(chr.HumanoidRootPart.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) * CFrame.new(offset, 0, 0);
	end
	
	if heighti == 1 then
		height = height + speed / 100;
	elseif heighti == 2 then
		height = height - speed / 100;
	end
	if height > 2 then
		heighti = 2;
	end
	if height < -1 then
		heighti = 1;
	end
	
	if mode == 1 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset);
		end
	elseif mode == 2 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(offset, height, offset);
		end
	elseif mode == 3 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, height, math.sin(rotz) * offset);
		end
	elseif mode == 4 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 5 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.cos(rotz) - i) * offset);
		end
	elseif mode == 6 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.tan(rotz) - i) * offset);
		end
	elseif mode == 7 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(math.cos(rotx * i) * offset, 0, math.cos(rotz * i) * offset);
		end
	elseif mode == 8 then
	    for i, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * i * offset, 0, math.sin(rotz) * i * offset);
		end
	elseif mode == 9 then
		pcall(function()
			local so = nil;
			for k, b in pairs(chr:GetChildren()) do
				if b:IsA'Tool' then
					for h, j in pairs(b:GetDescendants()) do
						if j:IsA'Sound' then
							so = j;
						end
					end
				end
			end
			if so ~= nil then
				offset = so.PlaybackLoudness / 35;
				speed = so.PlaybackLoudness / 500;
				angular = Vector3.new(0, so.PlaybackLoudness / 75, 0);
			end
		end)
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 10 then
		offset = height * 15;
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 11 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Z) + Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	end
	for _, v in pairs(mov2) do
		v.AngularVelocity = angular;
	end
end)
game.Players.LocalPlayer.Chatted:Connect(function(c)
	if c:split(' ')[1] == '/o' then
		for _, v in pairs(mov) do
			chr = ftp(c:split(' ')[2])[1].Character;
			v.Parent = ftp(c:split(' ')[2])[1].Character.HumanoidRootPart;
		end
	end
	if c:split(' ')[1] == '/s' then --speed
		speed = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '/m' then --mode
		mode = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '/' then --offset big small
		offset = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '/a' then --angular angle
		angular = Vector3.new(tonumber(c:split(' ')[2]), tonumber(c:split(' ')[3]), tonumber(c:split(' ')[4]));
	end
end)
    
    elseif spaceSplit[1] == ".antibang" or spaceSplit[1] == ".antilooptp" or spaceSplit[1] == ".antiheadsit" or spaceSplit[1] == ".antiorbit" then
    local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
        local old = getChar().HumanoidRootPart.CFrame
antib = true
repeat wait()
getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(40,600,0)
wait(5)
getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-40,-600,0)
wait(0.1)
until antib == false
    elseif spaceSplit[1] == ".unantibang" or spaceSplit[1] == ".unantilooptp" or spaceSplit[1] == ".unantiheadsit" or spaceSplit[1] == ".unantiorbit" then
    antib = false
    elseif spaceSplit[1] == ".view" or spaceSplit[1] == "/e view" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        workspace.CurrentCamera.CameraSubject = target.Character.Humanoid
        
    elseif spaceSplit[1] == ".chatscript" or spaceSplit[1] == ".script" then
        wait(0.5)
       Chat("Script Is Fedora")
       Chat("Made by 14anz_COOL and D4RKF0RS3R")
       Chat("Script Version Is 1.0.1 And It Is Free!")
       if wl == true then
       Chat("I Am WhiteListed To Modded Games Commands")
       else
       Chat("I Am Not WhiteListed To Modded Games Commands")
       end
    
    elseif spaceSplit[1] == ".checkwl" or spaceSplit[1] == ".checkwhitelist" then
       if wl == true then
       Chat("You Are Whitelisted")
       else
       Chat("You Are NOT Whitelisted")
       end
       
    elseif spaceSplit[1] == ".check" or spaceSplit[1] == ".checkplace" then
       if game.PlaceId == 574746640 then
       Chat("Game Is Modded With Fedora Admin")
       else
       Chat("Game Is Not Modded With Fedora Admin")
       end
       
    elseif spaceSplit[1] == ".unBtools" or spaceSplit[1] == ".unbtools" then
        
    local c = getChar()
	plr.Character = nil
        plr.Character = c
        wait(players.RespawnTime - 0)
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
            
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
        local old = c.HumanoidRootPart.CFrame
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old

    elseif spaceSplit[1] == ".breakchat" or spaceSplit[1] == ".chaterror" then
    wait(0.5)
        -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = " ",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

local args = {
    [1] = " ",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

local args = {
    [1] = " ",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

local args = {
    [1] = " ",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

local args = {
    [1] = " ",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

local args = {
    [1] = " ",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

    elseif spaceSplit[1] == ".unhatspin" or spaceSplit[1] == ".unHatspin" then
            local c = getChar()
	plr.Character = nil
        plr.Character = c
        wait(players.RespawnTime - 0)
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
            
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
        local old = c.HumanoidRootPart.CFrame
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
    elseif spaceSplit[1] == ".touchfling" or spaceSplit[1] == "/e touchfling" then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Flings.lua',true))()
    elseif spaceSplit[1] == ".freeze" or spaceSplit[1] == "/e freeze" then
        getChar().HumanoidRootPart.Anchored = true
    elseif spaceSplit[1] == ".unfreeze" or spaceSplit[1] == "/e unfreeze" then
        getChar().HumanoidRootPart.Anchored = false
    elseif spaceSplit[1] == ".crash"  or spaceSplit[1] == "/lagserver"  then
    local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1301186018"
sound.Parent = game:GetService("SoundService")
sound:Play()

     local HWIntro = Instance.new("ScreenGui")
local H = Instance.new("TextLabel")
local W = Instance.new("TextLabel")
local HOODWINK = Instance.new("TextLabel")

HWIntro.Name = "HWIntro"
HWIntro.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HWIntro.ResetOnSpawn = false

HOODWINK.Parent = HWIntro
HOODWINK.BackgroundColor3 = Color3.new(1, 1, 1)
HOODWINK.BackgroundTransparency = 1
HOODWINK.Position = UDim2.new(0.433414042, 0, 0.1, 0)
HOODWINK.Size = UDim2.new(0.149313956, 0, 0.0854700878, 0)
HOODWINK.Font = Enum.Font.GothamBold
HOODWINK.Text = "Error This Command Does Not Work Or Being Fixed For The Next Update"
HOODWINK.TextColor3 = Color3.new(1, 1, 1)
HOODWINK.TextScaled = false
HOODWINK.TextSize = 15
HOODWINK.TextWrapped = true

for i = 1,0,-0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

wait(2)

for i = 0,1,0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

HWIntro:Destroy()


         wait(2)
		 local c = getChar()
plr.Character = c
local LP = game:GetService('Players').LocalPlayer
if workspace:FindFirstChild(LP.Name) == nil then LP.CharacterAdded:Wait() end
local Char = workspace[LP.Name]
local Hat = Char['Humanoid']:GetAccessories()[1]
local Handle = Hat['Handle']

local Tool = Instance.new("Tool",LP.Backpack)
Tool.Grip = Tool.Grip * CFrame.new(0,-100,0)
Tool.Parent = Char
Handle.Parent = Tool

game:GetService('RunService').Stepped:Connect(function()
  for _,Part in next, Char:GetChildren() do
      if Part:IsA('BasePart') then
          Part.CanCollide = false
      end
  end
end)

local HPart; if Char:FindFirstChild('Right Arm') then
  HPart = 'Right Arm'
else
  HPart = 'RightHand'
end
for _,s in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if s:IsA("Motor6D") and s.Name ~= "Neck" then
        local fard = s.Parent
		for _ = 1,60000 do
  local Grip = Char[HPart].RightGrip:Clone()
  Grip.Parent = Char.Humanoid['Status']
end
wait(1) local CPart = Instance.new('Part',workspace)
CPart.CanCollide = false
CPart.Transparency = 1 CPart.Anchored = true
CPart.CFrame = Char['Head'].CFrame
workspace.Camera.CameraSubject = CPart
warn('Shutdown Activated') Char['Humanoid'].Sit = true
local BV = Instance.new('BodyVelocity', Char['HumanoidRootPart'])
BV.MaxForce = Vector3.new(1e5,1e5,1e5)
BV.Velocity = Vector3.new(0,-1e5,0)
BV.P = 1e5
		s:Destroy()
		s:Destroy()
		getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-2,1,-2)
        fard.CFrame = CFrame.new(99999999999999999,9e9* _,99999999999999999)
		wait(0.5)
		getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(1,-2,1)
		fard.CFrame = CFrame.new(9e9* _,99999999999999999,99999999999999999)
		wait(0.5)
		getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-2,1,-2)
		fard.CFrame = CFrame.new(99999999999999999,99999999999999999,9e9* _)
		wait(0.5)
		getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(1,-2,1)
		fard.CFrame = CFrame.new(9e9* _,9e9* _,9e9* _)
		wait(0.5)
		getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-2,1,-2)
		fard.CFrame = CFrame.new(9e9* _,99999999999999999,99999999999999999)
		wait(0.5)
		getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(1,-2,1)
		fard.CFrame = CFrame.new(99999999999999999,99999999999999999,9e9* _)
		wait(0.5)
		getChar().HumanoidRootPart.CFrame = getChar().HumanoidRootPart.CFrame * CFrame.new(-2,1,-2)
		fard.CFrame = CFrame.new(99999999999999999,9e9* _,99999999999999999)
        wait()
    end
end
plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old

    elseif spaceSplit[1] == ".antitkill"  or spaceSplit[1] == ".atk"  or spaceSplit[1] == ".antiattach"  or spaceSplit[1] == ".antifekill"  then
    Anti = true
    local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
    	repeat wait(-math.huge) 
    	    
    	    local hum = getChar():FindFirstChildOfClass("Humanoid")
    hum:UnequipTools()
	until Anti == false


elseif spaceSplit[1] == ".unantitkill"  or spaceSplit[1] == ".unatk"  or spaceSplit[1] == ".unantiattach" or spaceSplit[1] == ".unantifekill"  then
    Anti = false
    
    elseif spaceSplit[1] == ".chatbypass"  then
    loadstring(game:HttpGet("https://pastebin.com/raw/C5EZ0KR1"))()
    
    elseif spaceSplit[1] == ".delete"  or spaceSplit[1] == ".hide"  then
		local target = getPlr(tostring(spaceSplit[2]):lower())
		hide = true
		repeat wait()
target.Character.Parent = ServerStorage
until hide == false

elseif spaceSplit[1] == ".undelete"  or spaceSplit[1] == ".unhide"  then
		local target = getPlr(tostring(spaceSplit[2]):lower())
		hide = false


    elseif spaceSplit[1] == ".headless"  or spaceSplit[1] == ".nohead"  or spaceSplit[1] == ".fakeheadless"  then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Perma%20Death.lua',true))()
    wait(2)
    local c = game.Players.LocalPlayer.Character
    c["Head"]:Destroy()

    elseif spaceSplit[1] == ".nobody"  or spaceSplit[1] == ".floatinghead"  or spaceSplit[1] == ".head"  then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/CONVERTWARE/main/convertware/Reanimation/Mizt%20Perma%20Death.lua',true))()
    wait(2)
    local c = game.Players.LocalPlayer.Character
    c["Torso"]:Destroy()
    c["Left Arm"]:Destroy()
    c["Right Arm"]:Destroy()
    c["Left Leg"]:Destroy()
    c["Right Leg"]:Destroy()


    elseif spaceSplit[1] == ".baby"  or spaceSplit[1] == ".kid"  or spaceSplit[1] == ".nolimbs"  then
    local c = game.Players.LocalPlayer.Character
    c["Right Arm"]:Destroy()
    c["Left Arm"]:Destroy()
    c["Right Leg"]:Destroy()
    c["Left Leg"]:Destroy()
    
    elseif spaceSplit[1] == ".nolegs"  then
    local c = game.Players.LocalPlayer.Character
    c["Right Leg"]:Destroy()
    c["Left Leg"]:Destroy()
    
    elseif spaceSplit[1] == ".noarms"  then
    local c = game.Players.LocalPlayer.Character
    c["Right Arm"]:Destroy()
    c["Left Arm"]:Destroy()
    
    elseif spaceSplit[1] == ".babyr15"  or spaceSplit[1] == ".kidr15"  or spaceSplit[1] == ".nolimbsr15"  then
    local c = game.Players.LocalPlayer.Character
    c["LeftUpperArm"]:Destroy()
    c["RightUpperArm"]:Destroy()
    c["LeftUpperLeg"]:Destroy()
    c["RightUpperLeg"]:Destroy()
    
    elseif spaceSplit[1] == ".nolegsr15"  then
    local c = game.Players.LocalPlayer.Character
    c["LeftUpperLeg"]:Destroy()
    c["RightUpperLeg"]:Destroy()
    
    elseif spaceSplit[1] == ".noarmsr15"  then
    local c = game.Players.LocalPlayer.Character
    c["LeftUpperArm"]:Destroy()
    c["RightUpperArm"]:Destroy()
        
		elseif spaceSplit[1] == ".telec"  or spaceSplit[1] == ".telekinesis"  then
			local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1273802616"
sound.Parent = game:GetService("SoundService")
sound:Play()

game.StarterGui:SetCore("SendNotification", {
Title = "Fedora Admin"; 
Text = "Telec Tool Loaded"; 
})
			local function a(b, c)
        local d = getfenv(c)
        local e =
            setmetatable(
            {},
            {__index = function(self, f)
                    if f == "script" then
                        return b
                    else
                        return d[f]
                    end
                end}
        )
        setfenv(c, e)
        return c
    end
local g = {}
local h = Instance.new("Model", game:GetService("Lighting"))
local i = Instance.new("Tool")
local j = Instance.new("Part")
local k = Instance.new("Script")
local l = Instance.new("LocalScript")
local m = sethiddenproperty or set_hidden_property
i.Name = "Custom Tool"
i.Parent = h
i.Grip = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0)
i.GripForward = Vector3.new(-0, -3, -0)
i.GripRight = Vector3.new(0, 0, 1)
i.GripUp = Vector3.new(1, 0, 0)
j.Name = "Handle"
j.Parent = i
j.CFrame = CFrame.new(-20.2635937, 15.4915619, 46, 0, 1, 0, 1, 0, 0, 0, 0, -1)
j.Orientation = Vector3.new(0, 180, 90)
j.Position = Vector3.new(-20.2635937, 15.4915619, 46)
j.Rotation = Vector3.new(-180, 0, -90)
j.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
j.Transparency = 0.5
j.Size = Vector3.new(1, 2.20000005, 1)
j.BottomSurface = Enum.SurfaceType.Weld
j.BrickColor = BrickColor.new("Cyan")
j.Material = Enum.Material.Neon
j.TopSurface = Enum.SurfaceType.Smooth
j.brickColor = BrickColor.new("Cyan")
k.Name = "LineConnect"
k.Parent = i
table.insert(
    g,
    a(
        k,
        function()
            wait()
            local n = script.Part2
            local o = script.Part1.Value
            local p = script.Part2.Value
            local q = script.Par.Value
            local color = script.Color
            local r = Instance.new("Part")
            r.TopSurface = 0
            r.BottomSurface = 0
            r.Reflectance = .5
            r.Name = "Laser"
            r.Locked = true
            r.CanCollide = false
            r.Anchored = true
            r.formFactor = 0
            r.Size = Vector3.new(1, 1, 1)
            local s = Instance.new("BlockMesh")
            s.Parent = r
            while true do
                if n.Value == nil then
                    break
                end
                if o == nil or p == nil or q == nil then
                    break
                end
                if o.Parent == nil or p.Parent == nil then
                    break
                end
                if q.Parent == nil then
                    break
                end
                local t = CFrame.new(o.Position, p.Position)
                local dist = (o.Position - p.Position).magnitude
                r.Parent = q
                r.BrickColor = color.Value.BrickColor
                r.Reflectance = color.Value.Reflectance
                r.Transparency = color.Value.Transparency
                r.CFrame = CFrame.new(o.Position + t.lookVector * dist / 2)
                r.CFrame = CFrame.new(r.Position, p.Position)
                s.Scale = Vector3.new(.25, .25, dist)
                wait()
            end
            r:remove()
            script:remove()
        end
    )
)
k.Disabled = true
l.Name = "MainScript"
l.Parent = i
table.insert(
    g,
    a(
        l,
        function()
            wait()
            tool = script.Parent
            lineconnect = tool.LineConnect
            object = nil
            mousedown = false
            found = false
            BP = Instance.new("BodyPosition")
            BP.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge)
            BP.P = BP.P * 1.1
            dist = nil
            point = Instance.new("Part")
            point.Locked = true
            point.Anchored = true
            point.formFactor = 0
            point.Shape = 0
            point.BrickColor = BrickColor.Blue()
            point.Size = Vector3.new(4, 4, 4)
            point.CanCollide = true
            local s = Instance.new("SpecialMesh")
            s.MeshType = "Sphere"
            s.Scale = Vector3.new(.7, .7, .7)
            s.Parent = point
            handle = tool.Handle
            front = tool.Handle
            color = tool.Handle
            objval = nil
            local u = false
            local v = BP:clone()
            v.maxForce = Vector3.new(30000, 30000, 30000)
            function LineConnect(o, p, q)
                local w = Instance.new("ObjectValue")
                w.Value = o
                w.Name = "Part1"
                local x = Instance.new("ObjectValue")
                x.Value = p
                x.Name = "Part2"
                local y = Instance.new("ObjectValue")
                y.Value = q
                y.Name = "Par"
                local z = Instance.new("ObjectValue")
                z.Value = color
                z.Name = "Color"
                local A = lineconnect:clone()
                A.Disabled = false
                w.Parent = A
                x.Parent = A
                y.Parent = A
                z.Parent = A
                A.Parent = workspace
                if p == object then
                    objval = x
                end
            end
            function onButton1Down(B)
                if mousedown == true then
                    return
                end
                mousedown = true
                coroutine.resume(
                    coroutine.create(
                        function()
                            local C = point:clone()
                            C.Parent = tool
                            LineConnect(front, C, workspace)
                            while mousedown == true do
                                C.Parent = tool
                                if object == nil then
                                    if B.Target == nil then
                                        local t = CFrame.new(front.Position, B.Hit.p)
                                        C.CFrame = CFrame.new(front.Position + t.lookVector * 1000)
                                    else
                                        C.CFrame = CFrame.new(B.Hit.p)
                                    end
                                else
                                    LineConnect(front, object, workspace)
                                    break
                                end
                                wait()
                            end
                            C:remove()
                        end
                    )
                )
                while mousedown == true do
                    if B.Target ~= nil then
                        local D = B.Target
                        if D.Anchored == false then
                            object = D
                            dist = (object.Position - front.Position).magnitude
                            break
                        end
                    end
                    wait()
                end
                while mousedown == true do
                    if object.Parent == nil then
                        break
                    end
                    local t = CFrame.new(front.Position, B.Hit.p)
                    BP.Parent = object
                    BP.position = front.Position + t.lookVector * dist
                    wait()
                end
                BP:remove()
                object = nil
                objval.Value = nil
            end
            function onKeyDown(E, B)
                local E = E:lower()
                local F = false
                if E == "q" then
                    if dist >= 5 then
                        dist = dist - 10
                    end
                end
                if E == "r" then
                    if object == nil then
                        return
                    end
                    for G, H in pairs(object:children()) do
                        if H.className == "BodyGyro" then
                            return nil
                        end
                    end
                    BG = Instance.new("BodyGyro")
                    BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    BG.cframe = CFrame.new(object.CFrame.p)
                    BG.Parent = object
                    repeat
                        wait()
                    until object.CFrame == CFrame.new(object.CFrame.p)
                    BG.Parent = nil
                    if object == nil then
                        return
                    end
                    for G, H in pairs(object:children()) do
                        if H.className == "BodyGyro" then
                            H.Parent = nil
                        end
                    end
                    object.Velocity = Vector3.new(0, 0, 0)
                    object.RotVelocity = Vector3.new(0, 0, 0)
                    object.Orientation = Vector3.new(0, 0, 0)
                end
                if E == "e" then
                    dist = dist + 10
                end
                if E == "t" then
                    if dist ~= 10 then
                        dist = 10
                    end
                end
                if E == "y" then
                    if dist ~= 100 then
                        dist = 100
                    end
                end
                if E == "=" then
                    BP.P = BP.P * 1.5
                end
                if E == "-" then
                    BP.P = BP.P * 0.5
                end
            end
            function onEquipped(B)
                keymouse = B
                local I = tool.Parent
                human = I.Humanoid
                human.Changed:connect(
                    function()
                        if human.Health == 0 then
                            mousedown = false
                            BP:remove()
                            point:remove()
                            tool:remove()
                        end
                    end
                )
                B.Button1Down:connect(
                    function()
                        onButton1Down(B)
                    end
                )
                B.Button1Up:connect(
                    function()
                        mousedown = false
                    end
                )
                B.KeyDown:connect(
                    function(E)
                        onKeyDown(E, B)
                    end
                )
                B.Icon = "rbxasset://textures\\GunCursor.png"
            end
            tool.Equipped:connect(onEquipped)
        end
    )
)
for J, H in pairs(h:GetChildren()) do
    H.Parent = game:GetService("Players").LocalPlayer.Backpack
    pcall(
        function()
            H:MakeJoints()
        end
    )
end
h:Destroy()
for J, H in pairs(g) do
    spawn(
        function()
            pcall(H)
        end
    )
end
        elseif spaceSplit[1] == ".antifling"  or spaceSplit[1] == ".nofling"  then
        local Services = setmetatable({}, {__index = function(Self, Index)
local NewService = game.GetService(game, Index)
if NewService then
Self[Index] = NewService
end
return NewService
end})

-- [ LocalPlayer ] --
local LocalPlayer = Services.Players.LocalPlayer

-- // Functions \\ --
local function PlayerAdded(Player)
   local Detected = false
   local Character;
   local PrimaryPart;

   local function CharacterAdded(NewCharacter)
       Character = NewCharacter
       repeat
           wait()
           PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
       until PrimaryPart
       Detected = false
   end

   CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
   Player.CharacterAdded:Connect(CharacterAdded)
   Services.RunService.Heartbeat:Connect(function()
       if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
           if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
               if Detected == false then
                   game.StarterGui:SetCore("ChatMakeSystemMessage", {
                       Text = "Fling detected, Player: " .. tostring(Player);
                       Color = Color3.fromRGB(255, 200, 0);
                   })
               end
               Detected = true
               for i,v in ipairs(Character:GetDescendants()) do
                   if v:IsA("BasePart") then
                       v.CanCollide = false
                       v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                       v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                       v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                   end
               end
               PrimaryPart.CanCollide = false
               PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
               PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
               PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
           end
       end
   end)
end

-- // Event Listeners \\ --
for i,v in ipairs(Services.Players:GetPlayers()) do
   if v ~= LocalPlayer then
       PlayerAdded(v)
   end
end
Services.Players.PlayerAdded:Connect(PlayerAdded)

local LastPosition = nil
Services.RunService.Heartbeat:Connect(function()
   pcall(function()
       local PrimaryPart = LocalPlayer.Character.PrimaryPart
       if PrimaryPart.AssemblyLinearVelocity.Magnitude > 150 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 150 then
           PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
           PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
           PrimaryPart.CFrame = LastPosition

           game.StarterGui:SetCore("ChatMakeSystemMessage", {
               Text = "You were flung. Neutralizing velocity.";
               Color = Color3.fromRGB(255, 0, 0);
           })
       elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
           LastPosition = PrimaryPart.CFrame
       end
   end)
end)
elseif spaceSplit[1] == ".dupe" or spaceSplit[1] == ".dupetools" then
        local val = tonumber(spaceSplit[2])
         local dupedtools = {}
         local old = getChar().HumanoidRootPart.CFrame
         local olddh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
       
        for i = 1, val do
            plr.Character:WaitForChild("Humanoid").BreakJointsOnDeath = false
            plr.Character:WaitForChild("Humanoid").RequiresNeck = false
            replacehum()
            task.wait(0.5)
            plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(math.huge,math.huge,math.huge)
            task.wait(0.5)
            for i,v in pairs(plr.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    v.Parent = plr.Character
                end
            end
            task.wait()
            for i,v in pairs(plr.Character:GetChildren()) do
                if v:IsA("Tool") then
                    table.insert(dupedtools, v)
                    v.Parent = game:GetService("Workspace")
                end
            end
            plr.CharacterAdded:Wait()
            plr.Character:WaitForChild("HumanoidRootPart")
            plr.Character:WaitForChild("Humanoid")
        end
        for i,v in pairs(dupedtools) do
            if v.Parent == game:GetService("Workspace") then
                if syn then
                    firetouchinterest(v:FindFirstChild("Handle"), plr.Character:FindFirstChild("HumanoidRootPart"), 0)
                    firetouchinterest(v:FindFirstChild("Handle"), plr.Character:FindFirstChild("HumanoidRootPart"), 1)
                else
                    repeat
                        v:FindFirstChild("Handle").CFrame = plr.Character:FindFirstChild("HumanoidRootPart").CFrame
                        game:GetService("RunService").Heartbeat:Wait()
                    until v.Parent ~= game:GetService("Workspace")
                end
            end
        end
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
    
    elseif spaceSplit[1] == ".walkspeed" or spaceSplit[1] == ".ws" then
        local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.WalkSpeed = val 
    elseif spaceSplit[1] == ".jumppower" or spaceSplit[1] == ".jp" or spaceSplit[1] == "/e jumppower" or spaceSplit[1] == "/e jp" then
        local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.JumpPower = val
    elseif spaceSplit[1] == ".hipheight" or spaceSplit[1] == ".hh" or spaceSplit[1] == "/e hipheight" or spaceSplit[1] == "/e hh" then
        local val = tonumber(spaceSplit[2])
        if val == nil then return end 
        getChar().Humanoid.HipHeight = val
    elseif spaceSplit[1] == ".noclip" or spaceSplit[1] == ".nc" or spaceSplit[1] == "/e noclip" or spaceSplit[1] == "/e nc" then
        nc = true
    elseif spaceSplit[1] == ".clip" or spaceSplit[1] == ".c" or spaceSplit[1] == "/e clip" or spaceSplit[1] == "/e c" then
        nc = false
    elseif spaceSplit[1] == ".goto" or spaceSplit[1] == ".to" or spaceSplit[1] == "/e goto" or spaceSplit[1] == "/e to" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame

    elseif spaceSplit[1] == ".respawn" or spaceSplit[1] == ".re" or spaceSplit[1] == "/e respawn" or spaceSplit[1] == "/e re" then

    local c = getChar()
	plr.Character = nil
        plr.Character = c
        wait(players.RespawnTime - 0)
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
            
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
        local old = c.HumanoidRootPart.CFrame
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
        elseif spaceSplit[1] == ".gr" or spaceSplit[1] == ".gamerespawn" or spaceSplit[1] == "/e gamerespawn" or spaceSplit[1] == "/e gr" then

    local c = getChar()
	plr.Character = nil
        plr.Character = c
        wait(players.RespawnTime - 0)
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
            
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"


    elseif spaceSplit[1] == ".killall" or spaceSplit[1] == "/e killall" then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Kill%20All"))()
	
	elseif spaceSplit[1] == ".legresize" or spaceSplit[1] == "/e legresize" then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg%20Resize"))()

    elseif spaceSplit[1] == ".flingall" or spaceSplit[1] == "/e flingall" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/loop%20fling%20all"))()
        wait(10)
        local c = getChar()
        local old = c.HumanoidRootPart.CFrame
        c.Humanoid.Health = -1000
        plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        
    elseif spaceSplit[1] == ".equiptools" or spaceSplit[1] == "/e equiptools" then
        for i,v in pairs(getBp():GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = getChar()
            end
        end
        
    
        
    elseif spaceSplit[1] == ".fling" or spaceSplit[1] == "/e fling"  then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        
        local flingTime = 0.288
        local fTime = os.clock()
        local rot = 89078907234507823457890452390784259078345
        local tools = {}
        local originalGrips = {}
        local hum = getChar():FindFirstChildOfClass("Humanoid")
        local root = hum.RootPart
        local tChr = target.Character
        local tHum = tChr:FindFirstChildOfClass("Humanoid")
        local tRoot = tChr:FindFirstChild("Torso") or tChr:FindFirstChild("UpperTorso")
        local origCF = root.CFrame
        local origState = hum:GetState()
        local origFpdh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0 / 0
        hum:ChangeState(Enum.HumanoidStateType.Physics)
        hum:UnequipTools()
        for _, v in ipairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Handle") then
                table.insert(tools, v)
                table.insert(originalGrips, v.Grip)
                v.Handle.Massless = true
                v.Grip = CFrame.new(5773, 5774, 5773)
                v.Parent = getChar()
            end
        end
        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Velocity = Vector3.new(9e30, 9e30, 9e30)
        bv.Parent = root
        local bav = Instance.new("BodyAngularVelocity")
        bav.AngularVelocity = Vector3.new(9e30, 9e30, 9e30)
        bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bav.Parent = root
        while true do
            if os.clock() - fTime >= flingTime then
                break
            else
                if rot == 3454574567 then
                    rot = 89078907234507823457890452390784259078345
                else
                    rot = -3456457578
                end
                root.CFrame = tRoot.CFrame * CFrame.Angles(math.rad(rot), 0, 0) + tHum.MoveDirection * tHum.WalkSpeed * .4
            end
            task.wait()
        end
        hum:ChangeState(origState)
        bav:Destroy()
        bv:Destroy()
        root.Velocity = Vector3.new()
        root.RotVelocity = Vector3.new()
        root.CFrame = origCF
        workspace.FallenPartsDestroyHeight = origFpdh
        for i, v in ipairs(tools) do
            if originalGrips[i] then
                v.Grip = originalGrips[i]
            end
        end
        hum:UnequipTools()
		plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        elseif spaceSplit[1] == ".fti"   or spaceSplit[1] == ".firetouchinterest" or spaceSplit[1] == "/e fti" or spaceSplit[1] == "/e firetouchinterest"  then
            while true do
            local _, test = pcall(function()
            wait(0.01)
            firetouchinterest(game:GetService("Workspace").Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 0) -- 1 is untouch
            wait()
            firetouchinterest(game:GetService("Workspace").Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 1) -- 1 is untouch
            end)

            if test then print('error') end
            end
        elseif spaceSplit[1] == ".superfling" or spaceSplit[1] == "/e superfling" then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        
        local flingTime = 3.1
        local fTime = os.clock()
        local rot = 0
        local tools = {}
        local originalGrips = {}
        local hum = getChar():FindFirstChildOfClass("Humanoid")
        local root = hum.RootPart
        local tChr = target.Character
        local tHum = tChr:FindFirstChildOfClass("Humanoid")
        local tRoot = tChr:FindFirstChild("Torso") or tChr:FindFirstChild("UpperTorso")
        local origCF = root.CFrame
        local origState = hum:GetState()
        local origFpdh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0 / 0
        hum:ChangeState(Enum.HumanoidStateType.Physics)
        hum:UnequipTools()
        for _, v in ipairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Handle") then
                table.insert(tools, v)
                table.insert(originalGrips, v.Grip)
                v.Handle.Massless = true
                v.Grip = CFrame.new(5773, 5774, 5773)
                v.Parent = getChar()
            end
        end
        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Velocity = Vector3.new(9e30, 9e30, 9e30)
        bv.Parent = root
        local bav = Instance.new("BodyAngularVelocity")
        bav.AngularVelocity = Vector3.new(9e30, 9e30, 9e30)
        bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bav.Parent = root
        while true do
            if os.clock() - fTime >= flingTime then
                break
            else
                if rot == 80 then
                    rot = 0
                else
                    rot = 80
                end
                root.CFrame = tRoot.CFrame * CFrame.Angles(math.rad(rot), 0, 0) + tHum.MoveDirection * tHum.WalkSpeed * .4
            end
            task.wait()
        end
        hum:ChangeState(origState)
        bav:Destroy()
        bv:Destroy()
        root.Velocity = Vector3.new()
        root.RotVelocity = Vector3.new()
        root.CFrame = origCF
        workspace.FallenPartsDestroyHeight = origFpdh
        for i, v in ipairs(tools) do
            if originalGrips[i] then
                v.Grip = originalGrips[i]
            end
        end
        hum:UnequipTools()
		plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
        elseif spaceSplit[1] == ".ultrafling"  or spaceSplit[1] == ".ufling" or spaceSplit[1] == "/e ultrafling" or spaceSplit[1] == "/e ufling"  then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        
        local flingTime = 6.9
        local fTime = os.clock()
        local rot = 0
        local tools = {}
        local originalGrips = {}
        local hum = getChar():FindFirstChildOfClass("Humanoid")
        local root = hum.RootPart
        local tChr = target.Character
        local tHum = tChr:FindFirstChildOfClass("Humanoid")
        local tRoot = tChr:FindFirstChild("Torso") or tChr:FindFirstChild("UpperTorso")
        local origCF = root.CFrame
        local origState = hum:GetState()
        local origFpdh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0 / 0
        hum:ChangeState(Enum.HumanoidStateType.Physics)
        hum:UnequipTools()
        for _, v in ipairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Handle") then
                table.insert(tools, v)
                table.insert(originalGrips, v.Grip)
                v.Handle.Massless = true
                v.Grip = CFrame.new(5773, 5774, 5773)
                v.Parent = getChar()
            end
        end
        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Velocity = Vector3.new(9e30, 9e30, 9e30)
        bv.Parent = root
        local bav = Instance.new("BodyAngularVelocity")
        bav.AngularVelocity = Vector3.new(9e30, 9e30, 9e30)
        bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bav.Parent = root
        while true do
            if os.clock() - fTime >= flingTime then
                break
            else
                if rot == 60 then
                    rot = 0
                else
                    rot = 60
                end
                root.CFrame = tRoot.CFrame * CFrame.Angles(math.rad(rot), 0, 0) + tHum.MoveDirection * tHum.WalkSpeed * .4
            end
            task.wait()
        end
        hum:ChangeState(origState)
        bav:Destroy()
        bv:Destroy()
        root.Velocity = Vector3.new()
        root.RotVelocity = Vector3.new()
        root.CFrame = origCF
        workspace.FallenPartsDestroyHeight = origFpdh
        for i, v in ipairs(tools) do
            if originalGrips[i] then
                v.Grip = originalGrips[i]
            end
        end
        hum:UnequipTools()
		plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
	
	elseif spaceSplit[1] == ".flingbypass" or spaceSplit[1] == ".bfling"  then
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        
        local flingTime = 5.5
        local fTime = os.clock()
        local rot = 0
        local tools = {}
        local originalGrips = {}
        local hum = getChar():FindFirstChildOfClass("Humanoid")
        local root = hum.RootPart
        local tChr = target.Character
        local tHum = tChr:FindFirstChildOfClass("Humanoid")
        local tRoot = tChr:FindFirstChild("Torso") or tChr:FindFirstChild("UpperTorso")
        local origCF = root.CFrame
        local origState = hum:GetState()
        local origFpdh = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0 / 0
        hum:ChangeState(Enum.HumanoidStateType.Physics)
        hum:UnequipTools()
        for _, v in ipairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Handle") then
                table.insert(tools, v)
                table.insert(originalGrips, v.Grip)
                v.Handle.Massless = true
                v.Grip = CFrame.new(5773, 5774, 5773)
                v.Parent = getChar()
            end
        end
        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Velocity = Vector3.new(9e30, 9e30, 9e30)
        bv.Parent = root
        local bav = Instance.new("BodyAngularVelocity")
        bav.AngularVelocity = Vector3.new(9e30, 9e30, 9e30)
        bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bav.Parent = root
        while true do
            if os.clock() - fTime >= flingTime then
                break
            else
                if rot == 60 then
                    rot = 0
                else
                    rot = 10
                end
                root.CFrame = tRoot.CFrame * CFrame.Angles(math.rad(rot), 0, 0) + tHum.MoveDirection * tHum.WalkSpeed * .4
            end
            task.wait()
        end
        hum:ChangeState(origState)
        bav:Destroy()
        bv:Destroy()
        root.Velocity = Vector3.new()
        root.RotVelocity = Vector3.new()
        root.CFrame = origCF
        workspace.FallenPartsDestroyHeight = origFpdh
        for i, v in ipairs(tools) do
            if originalGrips[i] then
                v.Grip = originalGrips[i]
            end
        end
        hum:UnequipTools()
		plr.CharacterAdded:Wait()
        getChar():WaitForChild("HumanoidRootPart").CFrame = old
    elseif spaceSplit[1] == ".toolflingall" or spaceSplit[1] == "/e toolflingall" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Tool%20Loop%20Fling%20All"))()
    elseif spaceSplit[1] == ".loopflingall" or spaceSplit[1] == "/e loopflingall" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/loop%20fling%20all"))()
    elseif spaceSplit[1] == ".netsleep" or spaceSplit[1] == ".glitch" or spaceSplit[1] == "/e netsleep" or spaceSplit[1] == "/e glitch" then
        if spaceSplit[2] and (spaceSplit[2] == "all" or spaceSplit[2] == "others") then
            for i,v in pairs(players:Getplayers()) do
                if v ~= plr then
                    table.insert(netsleepTargets,v)
                end
            end
            return
        end
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil then return end
        table.insert(netsleepTargets,target)
    elseif spaceSplit[1] == "/unnetsleep" or spaceSplit[1] == "/unglitch" or spaceSplit[1] == "/e unnetsleep" or spaceSplit[1] == "/e unglitch"  then
        if spaceSplit[2] and (spaceSplit[2] == "all" or spaceSplit[2] == "others") then
            netsleepTargets = {}
            return
        end
        local target = getPlr(tostring(spaceSplit[2]):lower())
        if target == nil or table.find(netsleepTargets,target) == nil then return end
        table.remove(netsleepTargets,table.find(netsleepTargets,target))
    elseif spaceSplit[1] == ".rejoin" or spaceSplit[1] == ".rj" or spaceSplit[1] == "/e rejoin" or spaceSplit[1] == "/e rj" then
		local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1273802616"
sound.Parent = game:GetService("SoundService")
sound:Play()

game.StarterGui:SetCore("SendNotification", {
Title = "Fedora Admin"; 
Text = "Rejoining the server"; 
})
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
    elseif spaceSplit[1] == ".cmds" or spaceSplit[1] == ".commands" or spaceSplit[1] == "/e cmds" or spaceSplit[1] == "/e commands" then
		local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1273802616"
sound.Parent = game:GetService("SoundService")
sound:Play()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.381516576, 0, 0.0883534104, 0)
Frame.Size = UDim2.new(0, 226, 0, 396)

UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.Position = UDim2.new(-0.000723644684, 0, -0.000150988795, 0)
Frame_2.Size = UDim2.new(0, 188, 0, 25)

UICorner_2.Parent = Frame_2

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 145, 0, 25)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Fedora Commands"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

ScrollingFrame.Parent = Frame
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.Position = UDim2.new(0.0167224184, 0, 0.0818481445, 0)
ScrollingFrame.Size = UDim2.new(0.961537659, 0, 0.618492961, 100)
ScrollingFrame.CanvasPosition = Vector2.new(0, 900)
ScrollingFrame.CanvasSize = UDim2.new(2, 0, 4, 0)
ScrollingFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

TextLabel_2.Parent = ScrollingFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0303622764, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 9368, 0, 9938)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = ([[
|||||||||||||||||Commands||||||||||||||||||||              
 fling [target]       
 superfling [target]        
 ultrafling / ufling [target]                
 flingbypass / bfling [target]    
 tfling / toolfling [target]  
 view [target]        
 bring [target]        
 bring2 [target]
 attach [target]        
 kill [target]
 force [target]
 kick [target]
 hide / delete [target]
 loopkill / lk [target]
 unloopkill / unlk [target]
 loopcbring / lcb [target]
 unloopcbring / unlcb [target]
 void [target]
 fastkill [target]
 gripvoid / gvoid / instakill [target]
 firework [target]
 punish / banish /void2 [target]        
 skydive / freefall [target]       
 cuff [target]
 gripskydive / gripfreefall / gskydive / gfreefall [target]  
 sink [target]        
 handletouch / ht [target]
 spin [target]
 skill / swordkill [target]
 loopskill / loopswordkill [target]
 unloopskill / unloopswordkill
 loopskillall / loopswordkillall
 unloopskillall / unloopswordkillall
 gkill / gripkill [target]
 infolog / il [target] (fake iplogger lol)
 jump [target]
 kidnap [target]               
 netlag / glitch [target]        
 unnetlag / unglitch [target]        
 goto / to [target]        
 forcefield / ff
 unforcefield / unff
 noclip / nc        
 loopflingall     
 antibang / antilooptp / antiheadsit / antiorbit
 unantibang / unantilooptp / unantiheadsit / unantiorbit
 fakelag 
 touchfling        
 antifling / nofling   
 breakchat / chaterror
 antitkill / atk / antiattach / antifekill        
 unantitkill / unatk / unantiattach / unantifekill    
 telekinesis / telec        
 chatbypass        
 firetouchinterest / fti        
 freeze   
 unfreeze
 pfling / punchfling
 killall        
 legresize        
 baby / kid       
 noarms
 babyr15 / kidr15  
 headless / nohead / fakeheadless        
 floatinghead / head / nobody             
 givetool [target]
 clip / c        
 chatscript        
 rejoin / rj    
 checkwl / checkwhitelist
 check / checkplace
 respawn / re
 equiptools 
 dupetools / dupe [number]
 hipheight / hh [number]        
 walkspeed / ws [number]         
 jumppower / jp [number]        
 commands / cmds        
 info        
 stopadmin
||||||||||||||||HatsCommands|||||||||||||||||||
 btools [hat]
 unbtools [hat] 
 hatspin [hat]
 unhatspin [hat]
 laserarm / larm [hat] [Pal-Hair and other 9 hats/hair]
 unlaserarm / unlarm [wait a few seconds]

            4nn1's Place:

 foreverday / fday
 forevernight / fnight
 unforeverday / unfday
 unforevernight / unfnight
 flash / party [number]
 unflash / unparty
 jail [target]
 lag / lagserver
 unlag / unlagserver
 charactersgoto / cgoto [target]
 boom [target]
 digmuf
 grabcats / grabc
 ungrabcats / ungrabc
 bringmuf / bmuf
 voifmuf / vmuf
 explodemuf / exmuf
 bringmuf / bm
hatmuf / gh [hat / hair]
]])

TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = ScrollingFrame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 94, 0)
TextButton.Position = UDim2.new(1.34624052, -100, 0.0110100955, 0)
TextButton.Size = UDim2.new(0, 16, 0, 16)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.TextTransparency = 1.000

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = TextButton

-- Scripts:

local function XBVVUQ_fake_script() -- Frame.DragScript 
	local script = Instance.new('LocalScript', Frame)
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.75
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end
coroutine.wrap(XBVVUQ_fake_script)()
local function ZBVBWP_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	button = script.Parent
	window = button.Parent
	
	function onClicked(GUI)
	 window:remove()
	end
	script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(ZBVBWP_fake_script)()



    elseif spaceSplit[1] == ".info" then
		local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1273802616"
sound.Parent = game:GetService("SoundService")
sound:Play()

     local HWIntro = Instance.new("ScreenGui")
local H = Instance.new("TextLabel")
local W = Instance.new("TextLabel")
local HOODWINK = Instance.new("TextLabel")

HWIntro.Name = "HWIntro"
HWIntro.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HWIntro.ResetOnSpawn = false

HOODWINK.Parent = HWIntro
HOODWINK.BackgroundColor3 = Color3.new(1, 1, 1)
HOODWINK.BackgroundTransparency = 1
HOODWINK.Position = UDim2.new(0.433414042, 0, 0.1, 0)
HOODWINK.Size = UDim2.new(0.149313956, 0, 0.0854700878, 0)
HOODWINK.Font = Enum.Font.GothamBold
HOODWINK.Text = "Script Owners:RyZe#5993 Script Helpers And Script Ideas: D4RKF0RS3R#1717"
HOODWINK.TextColor3 = Color3.new(1, 1, 1)
HOODWINK.TextScaled = false
HOODWINK.TextSize = 15
HOODWINK.TextWrapped = true

for i = 1,0,-0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

wait(2)

for i = 0,1,0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

HWIntro:Destroy()
    
    elseif spaceSplit[1] == ".stopadmin" or spaceSplit[1] == ".killscript" then
        cc:Disconnect()
        nsLoop:Disconnect()
        ncLoop:Disconnect()
     local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1273802616"
sound.Parent = game:GetService("SoundService")
sound:Play()

     local HWIntro = Instance.new("ScreenGui")
local H = Instance.new("TextLabel")
local W = Instance.new("TextLabel")
local HOODWINK = Instance.new("TextLabel")

HWIntro.Name = "HWIntro"
HWIntro.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HWIntro.ResetOnSpawn = false

HOODWINK.Parent = HWIntro
HOODWINK.BackgroundColor3 = Color3.new(1, 1, 1)
HOODWINK.BackgroundTransparency = 1
HOODWINK.Position = UDim2.new(0.433414042, 0, 0.1, 0)
HOODWINK.Size = UDim2.new(0.149313956, 0, 0.0854700878, 0)
HOODWINK.Font = Enum.Font.GothamBold
HOODWINK.Text = "FEDORA Admin Script Has Been Killed"
HOODWINK.TextColor3 = Color3.new(1, 1, 1)
HOODWINK.TextScaled = false
HOODWINK.TextSize = 15
HOODWINK.TextWrapped = true

for i = 1,0,-0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

wait(2)

for i = 0,1,0.1 do
	HOODWINK.TextTransparency = i
	W.BackgroundTransparency = i
	W.TextTransparency = i
	H.BackgroundTransparency = i
	H.TextTransparency = i
	wait()
end

HWIntro:Destroy()

print([[
 
 ____________________________________
|
|   fedora admin has stopped working!
|
|
|____________________________________
|
|	Version 1.0.1
|____________________________________

]])
    end
end)

print([[
 
 ____________________________________
|
|	Fedora admin has loaded!
|
|______________________________
|
|	Version 1.0.1
|____________________________________

]])
