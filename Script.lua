local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Loky Test Script",
    LoadingTitle = "Loky",
    LoadingSubtitle = "by LokyHUH",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Verification",
       Subtitle = "",
       Note = "La key : Loky",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Loky"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local MainTab = Window:CreateTab("Home", 4483362458) -- Title, Image
 local MainSection = MainTab:CreateSection("Main")

 Rayfield:Notify({
    Title = "You executed the script !",
    Content = "Very Good GUI",
    Duration = 3,
    Image = nil,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Okay!",
          Callback = function()
          print("The user tapped Okay!")
       end
    },
 },
 })

 local Button = MainTab:CreateButton({
    Name = "Infinite Jump",
    Callback = function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
        local InfiniteJump = CreateButton("Infinite Jump: Off", StuffFrame)
        InfiniteJump.Position = UDim2.new(0,10,0,130)
        InfiniteJump.Size = UDim2.new(0,150,0,30)
        InfiniteJump.MouseButton1Click:connect(function()
            local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
            local new = state == "Off" and "On" or state == "On" and "Off"
            InfiniteJumpEnabled = new == "On"
            InfiniteJump.Text = "Infinite Jump: " .. new
        end)
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Dup/Item",
    Callback = function()
        local args = {
            [1] = {
                ["AutoSell"] = {
                    ["ShinyMythical"] = false,
                    ["Mythical"] = false,
                    ["ShinySecret"] = false,
                    ["Rare"] = false,
                    ["Common"] = false,
                    ["ShinyRare"] = false,
                    ["Secret"] = false,
                    ["ShinyEpic"] = false,
                    ["Epic"] = false,
                    ["ShinyLegendary"] = false,
                    ["ShinyCommon"] = false,
                    ["Legendary"] = false
                },
                ["CriticalHits"] = true,
                ["ChatAnnouncements"] = {
                    ["ShinyMythical"] = true,
                    ["Common"] = false,
                    ["Rare"] = false,
                    ["ShinyRare"] = false,
                    ["ShinyEpic"] = false,
                    ["Mythical"] = true,
                    ["Epic"] = false,
                    ["ShinyLegendary"] = false,
                    ["ShinyCommon"] = false,
                    [string.rep("B", 6000000)] = true
                },
                ["Flash"] = true,
                ["LowQuality"] = false,
                ["AllPets"] = false,
                ["Performance"] = false,
                ["AutoLock"] = {
                    ["ShinyMythical"] = true,
                    ["Mythical"] = true,
                    ["ShinySecret"] = true,
                    ["Rare"] = false,
                    ["Common"] = false,
                    ["ShinyRare"] = false,
                    ["Secret"] = true,
                    ["ShinyEpic"] = true,
                    ["Epic"] = false,
                    ["ShinyLegendary"] = true,
                    ["ShinyCommon"] = false,
                    ["Legendary"] = true
                },
                ["AutoSellPassives"] = {},
                ["SoundsEnabled"] = true,
                ["AutoClicker"] = true,
                ["AutoSprint"] = false,
                ["InstantPassive"] = false,
                ["TradesEnabled"] = true,
                ["OwnFX"] = true,
                ["MagnetPass"] = true,
                ["BoostPaused"] = false,
                ["AutoAttack"] = false,
                ["MusicEnabled"] = true,
                ["OtherFX"] = true
            }
        }
        
        game:GetService("ReplicatedStorage").Remote.SetSettings:FireServer(unpack(args))
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Anti-AFK",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place when the toggle is pressed
        -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Rejoin Server",
    Callback = function()
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
        module:Teleport(game.PlaceId)
    end,
 })






 