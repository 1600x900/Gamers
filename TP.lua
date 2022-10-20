--[[
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("A") -- Creates the window

local b = w:CreateFolder("B") -- Creates the folder(U will put here your buttons,etc)

b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Remove",function()
	workspace.Map.DusekkarCaveEntrance:Destroy()
end)

b:Button("TP",function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(34.7486534, 130.348053, 360.103058))
end)

end)

b:DestroyGui()
]]

-- forked by SharKK | SharKK#1954

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wally2", true))()
local w = library:CreateWindow('Test')
--w:Section('Top')
local b = w:Button("Destroy", function()
   workspace.Map.DusekkarCaveEntrance:Destroy()
end)
local b = w:Button("TP", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(34.7486534, 130.348053, 360.103058))
end)
local b = w:Button("Base1", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-369.496246, 83.1559944, -294.376923))
end)
--[[
w:Section('Middle')
local old = workspace.CurrentCamera.FieldOfView
local s = w:Slider("FOV", {
   min = math.floor(workspace.CurrentCamera.FieldOfView);
   max = 120;
   flag = 'fov'
}, function(v)
   workspace.CurrentCamera.FieldOfView = v;
end)
local b2 = w:Button('Reset FOV', function()
   s:Set(old)
end)
w:Section('Bottom')

local box = w:Box('WalkSpeed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
end)

w:SearchBox("gamers", {
   location = shared;
   flag = "memes";
   list = {
       "kiriot";
       "magikmanz";
       "gamer vision";
       "ironbrew";
       "wally";
       "firefox";
       "this is epic";
   }
}, warn)

w:Dropdown("locations", {
   location = _G;
   flag = "memes";
   list = {
       "jewelryin";
       "jewelryout";
       'bank';
       'gas';
       'prison';
       'crimbase1';
       'crimbase2';
   }
}, function(new)
   warn(new)
   print(_G.memes)
end)

w:Bind("Kill Player", {
   flag = "killbind";
   kbonly = true;
   default = Enum.KeyCode.RightAlt;
}, function()
   game.Players.LocalPlayer.Character:BreakJoints()
end)
]]