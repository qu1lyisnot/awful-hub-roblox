local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Awful Hub", "Midnight")
local SStand = Window:NewTab("Sakura Stand")
local Other = Window:NewTab("Others")
local Obinds = Other:NewSection("Keybinds")
local Oinfo = Other:NewSection("Info")
local SSfarm = SStand:NewSection("Autofarms")
local SSbuy = SStand:NewSection("Buy Items")
local SSell = SStand:NewSection("Sell Items")
local SSstorage = SStand:NewSection("Stand Storages")
local SSchar = SStand:NewSection("Character Mods")










































































SSchar:NewSlider("Walkspeed", "Choose your walkspeed", 300, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
SSchar:NewSlider("Jumppower", "Choose your jumppower", 150, 50, function(j) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)


SSfarm:NewButton("Skin Roll (cost 350$)", "Rolls skin at Cafe", function(ar)
    game:GetService("ReplicatedStorage").GlobalUsedRemotes.ArcadePurchase:FireServer(false)
    print("Rolled")
end)
SSfarm:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
SSstorage:NewButton("Slot 1", "Transfers your stand to Slot 1", function(slot1)
    game:GetService("ReplicatedStorage").StorageRemote.Slot1:FireServer()
    print("Transfered!")
end)
SSstorage:NewButton("Slot 2", "Transfers your stand to Slot 2", function(slot2)
    game:GetService("ReplicatedStorage").StorageRemote.Slot2:FireServer()
    print("Transfered!")
end)
SSstorage:NewButton("Slot 3", "Transfers your stand to Slot 3", function(slot3)
    game:GetService("ReplicatedStorage").StorageRemote.Slot3:FireServer()
    print("Transfered!")
end)
SSstorage:NewButton("Slot 4", "Transfers your stand to Slot 4", function(slot4)
    game:GetService("ReplicatedStorage").StorageRemote.Slot4:FireServer()
    print("Transfered!")
end)
SSstorage:NewButton("Slot 5", "Transfers your stand to Slot 5", function(slot5)
    game:GetService("ReplicatedStorage").StorageRemote.Slot5:FireServer()
    print("Transfered!")
end)
SSstorage:NewButton("Slot 6", "Transfers your stand to Slot 6", function(slot6)
    game:GetService("ReplicatedStorage").StorageRemote.Slot6:FireServer()
    print("Transfered!")
end)

SSell:NewButton("All Items", "You will sell all items in your inventory", function(sall)
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Arrow")
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Rokakaka")
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Stop Sign")
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Stone Mask")
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Spin Manual")
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Hamon Manual")
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Mysterious Camera")
        print("Sold, if nothing happened, you don't have anything")
    end)
SSell:NewButton("Arrow", "You will sell Arrow", function(sa)
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Arrow")
        print("Sold, if nothing happened, you don't have arrow")
    end)
    SSell:NewButton("Rokakaka", "You will sell Rokakaka", function(sr)
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Rokakaka")
        print("Sold, if nothing happened, you don't have roka")
    end)
    SSell:NewButton("Stop Sign", "POG, you will sell stop sign", function(sss)
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Stop Sign")
        print("Sold, if nothing happened, you don't have stop sign")
    end)
    SSell:NewButton("Stone Mask", "you will reach jojo goal, you will sell stone mask", function(ssm)
    game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Stone Mask")
        print("Sold, if nothing happened, you don't have stone mask")
    end)
    SSell:NewButton("Camera", "You will sell Myst.Camera", function(smc)
        game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Mysterious Camera")
            print("Sold, if nothing happened, you don't have camera")
        end)
    SSell:NewButton("Spin Manual", "yay, you will sell spin manual", function(sspm)
        game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Spin Manual")
            print("Sold, if nothing happened, you don't have spin manual")
        end)
        SSell:NewButton("Hamon Manual", "yay, you will sell hamon manual", function(shm)
            game:service'ReplicatedStorage'.GlobalUsedRemotes.SellItem:FireServer("Hamon Manual")
                print("Sold, if nothing happened, you don't have hamon manual")
            end)
    
            Oinfo:NewLabel("Made by qu1ly")
            Oinfo:NewLabel("If you got questions, disc:qu1lyisnot#8089")
            Oinfo:NewLabel("Credits for Kavo UI")

    SSbuy:NewButton("Arrow", "Script will buy Arrow for you", function(ba)
        game:service'ReplicatedStorage'.BuyItemRemote.Arrow:FireServer()
        print("Bought, it can write that you don't have money")
    end)
    SSbuy:NewButton("Rokakaka", "Script will buy Rokakaka for you", function(br)
        game:service'ReplicatedStorage'.BuyItemRemote.Rokakaka:FireServer()
        print("Bought, it can write that you don't have money")
    end)
    SSbuy:NewButton("Stone Mask", "Script will buy Stone Mask for you", function(ba)
        game:service'ReplicatedStorage'.BuyItemRemote.Vampire:FireServer()
        print("Bought, it can write that you don't have money")
    end)
    SSbuy:NewButton("Hamon Manual", "Script will buy Hamon Spec for you", function(ba)
        game:service'ReplicatedStorage'.BuyItemRemote.Hamon:FireServer()
        print("Bought, it can write that you don't have money")
    end)
    SSbuy:NewButton("Spin Manual", "Script will buy Spin Spec for you", function(ba)
        game:service'ReplicatedStorage'.BuyItemRemote.Spin:FireServer()
        print("Bought, it can write that you don't have money")
    end)
    SSbuy:NewButton("Camera", "Script will buy Camera for you", function(ba)
        game:service'ReplicatedStorage'.BuyItemRemote.Camera:FireServer()
        print("Bought, it can write that you don't have money")
    end)

local SSanticheat
SSanticheat = hookmetamethod(game, "__index", newcclosure(function(...)
    local self, k = ...
    
    if not checkcaller() and k == "WalkSpeed" and self.Name == "Humanoid" and self:IsA("Humanoid") then
        return 16;
    elseif not checkcaller() and k == "JumpPower" and self.Name == "Humanoid" and self:IsA("Humanoid") then
        return 50
    end
    
    return SSanticheat(...)
end))

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end

local SSantikick
SSantikick = hookmetamethod(game, "__namecall", function(...)
    local self, k = ...

    if not checkcaller() and self == Plr and k == "Kick" then
        return;
    end
    
    return SSantikick(...)
end)

Obinds:NewKeybind("Toggle GUI", "keybind to show gui", Enum.KeyCode.K, function()
	Library:ToggleUI()
end)
