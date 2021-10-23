local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:wait()
local MaxLimit = game.Players.LocalPlayer.Stats.BagSizeLevel.CurrentAmount.Value
 
while wait() do
for i,v in pairs(game.Players.LocalPlayer.PlayerGui.InfoGui:GetDescendants()) do
if v.Name == "Bag" and v.Visible == false then
    Character.HumanoidRootPart.CFrame = game.Workspace.CashRegister.Open.CFrame
    wait(1)
repeat wait()
game.Workspace.CashRegister.Active.Value = true
game:GetService("ReplicatedStorage").GeneralEvents.Rob:FireServer("Register", { ["Part"]= workspace.CashRegister.Union, ["OpenPart"]= workspace.CashRegister.Open, ["ActiveValue"]= workspace.CashRegister.Active, ["Active"]= true })
until game.Players.LocalPlayer.States.Bag.Value == MaxLimit
    Character.HumanoidRootPart.CFrame = game.Workspace.Shops["OutlawGeneralStore1"].Head.ShopPart.CFrame
end
end
end
