-- // Visual Command UI Library Example
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20Command%20UI%20Library/Source.lua', true))()

local Window = Library:CreateWindow({
    Name = 'Fedora Version whatever',
    IntroText = 'Fedora but i made it better',
    IntroIcon = 'rbxassetid://10618644218',
    IntroBlur = true,
    IntroBlurIntensity = 15,
    Theme = Library.Themes.dark,
    Position = 'bottom',
    Draggable = true,
    Prefix = ';'
})

-- // Commands
Window:AddCommand('Print', {'String'}, 'Prints A String.', function(Arguments, Speaker)
    print(Arguments[1])
end)

Window:AddCommand('SetPrefix', {'New Prefix'}, 'Changes The Prefix.', function(Arguments, Speaker)
    Window:ChangePrefix(Arguments[1])
end)

Window:AddCommand('SetTheme', {'New Theme'}, 'Changes The Theme.', function(Arguments, Speaker)
    Window:ChangeTheme(Arguments[1])
end)

Window:AddCommand('HelloWorld', {}, 'Prints \'Hello World\'.', function(Arguments, Speaker)
    print('Hello World')
end)

Window:AddCommand('Notify', {}, 'Creates A Notification.', function(Arguments, Speaker)
    Window:CreateNotification('Visual Command UI Library', 'Notification', 5)
end)

Window:AddCommand('digmuf', {}, 'digs a hole with muffy', function(Arguments, Speaker)
  
end)
