--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.9.13) ~  Much Love, Ferib 

]]--

local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))();local v1=v0.Load({Title="🔫LokyHub⚔️",Style=4 -1 ,SizeX=2087 -(1523 + 114) ,SizeY=315 + 35 ,Theme="Dark",ColorOverrides={MainFrame=Color3.fromRGB(0 -0 ,1065 -(68 + 997) ,1270 -(226 + 1044) )}});local v2=v1.New({Title="Ancien Dup"});local v3=v1.New({Title="Nouveau Dup"});local v4=v2.Button({Text="Rejoin Server",Callback=function()local v8=0 -0 ;local v9;while true do if ((0 -0)==v8) then v9=loadstring(game("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))();v9:Teleport(game.PlaceId);break;end end end});local v5=v2.Button({Text="Dup Item",Callback=function()local v10=117 -(32 + 85) ;local v11;while true do if (v10==(0 + 0)) then v11={[1]={AutoSell={ShinyMythical=false,Mythical=false,ShinySecret=false,Rare=false,Common=false,ShinyRare=false,Secret=false,ShinyEpic=false,Epic=false,ShinyLegendary=false,ShinyCommon=false,Legendary=false},CriticalHits=true,ChatAnnouncements={ShinyMythical=true,Common=false,Rare=false,ShinyRare=false,ShinyEpic=false,Mythical=true,Epic=false,ShinyLegendary=false,ShinyCommon=false,[string.rep("B",1330531 + 4669469 )]=true},Flash=true,LowQuality=false,AllPets=false,Performance=false,AutoLock={ShinyMythical=true,Mythical=true,ShinySecret=true,Rare=false,Common=false,ShinyRare=false,Secret=true,ShinyEpic=true,Epic=false,ShinyLegendary=true,ShinyCommon=false,Legendary=true},AutoSellPassives={},SoundsEnabled=true,AutoClicker=true,AutoSprint=false,InstantPassive=false,TradesEnabled=true,OwnFX=true,MagnetPass=true,BoostPaused=false,AutoAttack=false,MusicEnabled=true,OtherFX=true}};game:GetService("ReplicatedStorage").Remote.SetSettings:FireServer(unpack(v11));break;end end end});local v5=v3.Button({Text="Selected no Type",Callback=function()if (Type=="Start Dataloss") then local v14={[958 -(892 + 65) ]={AutoSell={ShinyMythical=false,Mythical=false,ShinySecret=false,Rare=false,Common=false,ShinyRare=false,Secret=false,ShinyEpic=false,Epic=false,ShinyLegendary=false,ShinyCommon=false,Legendary=false},CriticalHits=true,ChatAnnouncements={ShinyMythical=true,Common=false,Rare=false,ShinyRare=false,ShinyEpic=false,Mythical=true,Epic=false,ShinyLegendary=false,ShinyCommon=false,[string.rep("B",10019228 -5819228 )]=true},Flash=true,LowQuality=false,AllPets=false,Performance=false,AutoLock={ShinyMythical=true,Mythical=true,ShinySecret=true,Rare=false,Common=false,ShinyRare=false,Secret=true,ShinyEpic=true,Epic=false,ShinyLegendary=true,ShinyCommon=false,Legendary=true},AutoSellPassives={},SoundsEnabled=true,AutoClicker=true,AutoSprint=false,InstantPassive=false,TradesEnabled=true,OwnFX=true,MagnetPass=true,BoostPaused=false,AutoAttack=false,MusicEnabled=true,OtherFX=true}};game:GetService("ReplicatedStorage").Remote.SetSettings:FireServer(unpack(v14));TextField:SetText("Active");elseif (Type=="Undo Dataloss") then local v15=0;local v16;while true do if (v15==(0 -0)) then v16={[1 -0 ]={AutoSell={ShinyMythical=false,Mythical=false,ShinySecret=false,Rare=false,Common=false,ShinyRare=false,Secret=false,ShinyEpic=false,Epic=false,ShinyLegendary=false,ShinyCommon=false,Legendary=false},CriticalHits=true,ChatAnnouncements={ShinyMythical=true,Common=false,Rare=false,ShinyRare=false,ShinyEpic=false,Mythical=true,Epic=false,ShinyLegendary=false,ShinyCommon=false,Legendary=true},Flash=true,LowQuality=false,AllPets=false,Performance=false,AutoLock={ShinyMythical=true,Mythical=true,ShinySecret=true,Rare=false,Common=false,ShinyRare=false,Secret=true,ShinyEpic=true,Epic=false,ShinyLegendary=true,ShinyCommon=false,Legendary=true},AutoSellPassives={},SoundsEnabled=true,AutoClicker=true,AutoSprint=false,InstantPassive=false,TradesEnabled=true,OwnFX=true,MagnetPass=true,BoostPaused=false,AutoAttack=false,MusicEnabled=true,OtherFX=true}};game:GetService("ReplicatedStorage").Remote.SetSettings:FireServer(unpack(v16));v15=1 + 0 ;end if (v15==(998 -(915 + 82))) then TextField:SetText("Undone");break;end end end end});local v6=v3.Dropdown({Text="Type",Callback=function(v12)getgenv().Type=v12;end,Options={"Start Dataloss","Undo Dataloss"}});getgenv().TextField=v3.TextField({Text="Status",Type="Default"});while task.wait() do if Type then v5:SetText(Type);end end