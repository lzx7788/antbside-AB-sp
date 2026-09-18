--==================== 卡密校验系统 开始 ====================
 local validKeys = {
     ["antBKey"] = true, -- 卡密：antBKey
 }
 local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
 -- 创建卡密弹窗
 local screenGui = Instance.new("ScreenGui")
 screenGui.ResetOnSpawn = false
 screenGui.Parent = PlayerGui
 local mainFrame = Instance.new("Frame")
 mainFrame.Size = UDim2.new(0,320,0,220)
 mainFrame.Position = UDim2.new(0.5,-160,0.5,-110)
 mainFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
 mainFrame.BorderSizePixel = 0
 mainFrame.Parent = screenGui
 Instance.new("UICorner",mainFrame).CornerRadius = UDim.new(0,8)
 local titleLabel = Instance.new("TextLabel")
 titleLabel.Size = UDim2.new(1,0,0,40)
 titleLabel.BackgroundTransparency = 1
 titleLabel.Text = "AB脚本v1.65 - 请输入卡密"
 titleLabel.TextColor3 = Color3.new(1,1,1)
 titleLabel.TextSize = 16
 titleLabel.Font = Enum.Font.SourceSansBold
 titleLabel.Parent = mainFrame
 local inputBox = Instance.new("TextBox")
 inputBox.Size = UDim2.new(0.85,0,0,45)
 inputBox.Position = UDim2.new(0.075,0,0.25,0)
 inputBox.BackgroundColor3 = Color3.fromRGB(45,45,45)
 inputBox.TextColor3 = Color3.new(1,1,1)
 inputBox.TextSize = 14
 inputBox.PlaceholderText = "输入卡密"
 inputBox.ClearTextOnFocus = false
 inputBox.Parent = mainFrame
 Instance.new("UICorner",inputBox).CornerRadius = UDim.new(0,6)
 local statusLabel = Instance.new("TextLabel")
 statusLabel.Size = UDim2.new(1,0,0,30)
 statusLabel.Position = UDim2.new(0,0,0.55,0)
 statusLabel.BackgroundTransparency = 1
 statusLabel.Text = ""
 statusLabel.TextColor3 = Color3.fromRGB(255,80,80)
 statusLabel.TextSize = 12
 statusLabel.Parent = mainFrame
 local submitBtn = Instance.new("TextButton")
 submitBtn.Size = UDim2.new(0.85,0,0,45)
 submitBtn.Position = UDim2.new(0.075,0,0.7,0)
 submitBtn.BackgroundColor3 = Color3.fromRGB(40,120,255)
 submitBtn.Text = "验证卡密"
 submitBtn.TextColor3 = Color3.new(1,1,1)
 submitBtn.TextSize = 15
 submitBtn.Font = Enum.Font.SourceSansBold
 submitBtn.Parent = mainFrame
 Instance.new("UICorner",submitBtn).CornerRadius = UDim.new(0,6)
 local pass = false
 submitBtn.MouseButton1Click:Connect(function()
     local key = inputBox.Text
     if validKeys[key] then
         statusLabel.Text = "✅验证成功！正在进入..."
         task.wait(0.6)
         screenGui:Destroy()
         pass = true
     else
         statusLabel.Text = "❌卡密错误！你是sb吗?!"
         task.wait(1.2)
         screenGui:Destroy()
     end
 end)
 -- 等待验证通过
 repeat task.wait(0.1) until pass
 --==================== 卡密校验系统 结束 ====================
 -- ========== 下面是你原来完整脚本 ==========
 local library = loadstring(game:HttpGet("https://pastebin.com/raw/nBq2D86q"))()
 local window = library:new("AB脚本v1.65")
 -- 在菜单上覆盖一张图片
 spawn(function()
     wait(2) -- 等待UI完全加载
     if game:GetService("CoreGui"):FindFirstChild("frosty") then
         local mainFrame = game:GetService("CoreGui").frosty.Main
         
         -- 创建覆盖图片
         local overlay = Instance.new("ImageLabel")
         overlay.Name = "MenuBackgroundOverlay"
         overlay.Image = "rbxassetid://992417778"
         overlay.BackgroundTransparency = 1
         overlay.Size = UDim2.new(1, 0, 1, 0)
         overlay.Position = UDim2.new(0, 0, 0, 0)
         overlay.ZIndex = -1 -- 放在底层
         
         -- 尝试不同的层级设置
         local success = pcall(function()
             overlay.Parent = mainFrame
         end)
         
         if not success then
             -- 如果放不进去，就放在Main的同级
             overlay.Parent = game:GetService("CoreGui").frosty
             overlay.Size = UDim2.new(1, 0, 1, 0)
         end
         
         -- 强制设置主框架背景
         pcall(function()
             mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
             mainFrame.BackgroundTransparency = 100
         end)
     end
 end)
 -- 信息标签
 local creds = window:Tab("信息",'992417778')
 local bin = creds:section("脚本信息",true)
 bin:Label("你的用户名:"..game.Players.LocalPlayer.Name)
 bin:Label("你的注入器:"..identifyexecutor())
     
 local bin = creds:section("关于我们 菜单我不会做，用的别人的",true)
 bin:Label("脚本名称: antbside v1.5")
 bin:Label("作者: ant-B")
 bin:Label("QQ群: on")
 bin:Label("作者qq: 1515498928")
 bin:Label("B站号:fsr-antB")
 bin:Label("目前v1.65")
 bin:Label("卡密:antBKey要区分大小写别忘记了")
     
 local credits = creds:section("界面控制",true)
 credits:Toggle("脚本框架变小一点", "", false, function(state)
     if state then
         game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
     else
         game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
     end
 end)
 credits:Button("关闭脚本",function()
     game:GetService("CoreGui")["frosty"]:Destroy()
 end)
 -- 通用功能
 local creds = window:Tab("通用功能",'992417778')
 local credits = creds:section("通用",true)
 credits:Button("飞行",function()
     loadstring(game:HttpGet("https://pastebin.com/raw/gqv7PXAa"))()
 end)
 credits:Button("甩飞",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-THE-REAL-dropkick-177199"))()
 end)
 credits:Button("黑洞",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-super-ring-v8-210936"))()
 end)
 credits:Button("甩飞2",function()
 local P = game:GetService("Players").LocalPlayer
 local PlayerGui = P:FindFirstChild("PlayerGui") or P:WaitForChild("PlayerGui", 10)
 local S = game:GetService("RunService")
 local Players = game:GetService("Players")
 if PlayerGui:FindFirstChild("TerukumaAntiStiff") then 
     PlayerGui.TerukumaAntiStiff:Destroy() 
 end
 local isActive = false 
 S.Stepped:Connect(function()
     local char = P.Character
     local hum = char and char:FindFirstChildOfClass("Humanoid")
     local hrp = char and char:FindFirstChild("HumanoidRootPart")
     if hum and hrp then
         hum.PlatformStand = false
         hum.Sit = false
         
         hum.AutoRotate = true
         local state = hum:GetState()
         if state == Enum.HumanoidStateType.Physics or 
            state == Enum.HumanoidStateType.FallingDown or 
            state == Enum.HumanoidStateType.Ragdoll then
             hum:ChangeState(Enum.HumanoidStateType.GettingUp)
         end
     end
     if isActive then
         for _, otherPlayer in pairs(Players:GetPlayers()) do
             if otherPlayer ~= P and otherPlayer.Character then
                 for _, part in pairs(otherPlayer.Character:GetDescendants()) do
                     if part:IsA("BasePart") then
                         part.CanCollide = false
                     end
                 end
             end
         end
     end
 end)
 task.spawn(function()
     while true do
         S.Heartbeat:Wait()
         
         if isActive and P.Character and P.Character:FindFirstChild("HumanoidRootPart") then
             local hrp = P.Character.HumanoidRootPart
             local hum = P.Character:FindFirstChildOfClass("Humanoid")
             
             local currentVel = hrp.AssemblyLinearVelocity
             
             hum:ChangeState(Enum.HumanoidStateType.Running)
             
             local safeY = currentVel.Y
             if safeY > 40 then safeY = 40 end
             if safeY < -40 then safeY = -40 end
             
             hrp.AssemblyAngularVelocity = Vector3.new(500000000000000000, 500000000000000000, 50000000000000000)
             
             hrp.AssemblyLinearVelocity = Vector3.new(currentVel.X * 100000000000.191, safeY, currentVel.Z * 1000000000.191)
             
             S.RenderStepped:Wait()
             
             if hrp then
                 hrp.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                 hrp.AssemblyLinearVelocity = Vector3.new(currentVel.X, safeY, currentVel.Z)
             end
         end
     end
 end)
 local g = Instance.new("ScreenGui", PlayerGui)
 g.Name = "TerukumaAntiStiff"
 g.ResetOnSpawn = false
 local f = Instance.new("Frame", g)
 f.Size = UDim2.new(0, 90, 0, 90)
 f.Position = UDim2.new(0.9, 0, 0.45, 0)
 f.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
 f.Active = true
 f.Draggable = true
 Instance.new("UICorner", f)
 local l = Instance.new("TextLabel", f)
 l.Size = UDim2.new(1, 0, 0, 35)
 l.Text = "二改甩飞 by@antbside114514678913"
 l.TextColor3 = Color3.fromRGB(255, 200, 0)
 l.TextSize = 12
 l.Font = Enum.Font.SourceSansBold
 l.BackgroundTransparency = 1
 local btn = Instance.new("TextButton", f)
 btn.Size = UDim2.new(0.85, 0, 0, 45)
 btn.Position = UDim2.new(0.075, 0, 0, 35)
 btn.Text = "再点一下开启"
 btn.BackgroundColor3 = Color3.fromRGB(100, 20, 20)
 btn.TextColor3 = Color3.new(1, 1, 1)
 btn.Font = Enum.Font.SourceSansBold
 btn.TextSize = 18
 Instance.new("UICorner", btn)
 btn.MouseButton1Click:Connect(function()
     isActive = not isActive
     if isActive then
         btn.Text = "再点一下关闭"
         btn.BackgroundColor3 = Color3.fromRGB(20, 100, 20)
     else
         btn.Text = "再点一下开启"
         btn.BackgroundColor3 = Color3.fromRGB(100, 20, 20)
     end
 end)
 end)
 credits:Button("无敌少侠",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/giobolqv1/invincible-characters-animations-by-GioBolqv1-/refs/heads/main/universal.lua"))()
 end)
 -- fe
 local creds = window:Tab("fe变形",'992417778')
 local credits = creds:section("fe功能",true)
 credits:Button("变成猫",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/Y1MkBRn3"))()
 end)
 credits:Button("变成车",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Silly-Car-55734"))()
 end)
 credits:Button("被遗弃访客",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/r862rtmj"))()
 end)
 credits:Button("uhhhhhh（需要棒球帽）",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Uhhhhhh-Reanimate-Made-by-Steve-89900"))()
 end)
 credits:Button("vr",function()
 loadstring(game:HttpGet("https://pastefy.app/MvKHpycG/raw"))()
 end)
 credits:Button("后室克拉克",function()
 loadstring(game:HttpGet("https://rscripts.net/raw/fe-r15-backrooms-clark-script_1786436103503_KD2XRr4qrY.txt",true))()
 end)
 credits:Button("蝴蝶",function()
 -- ANIMAÇÃO SKYBOX EMOTE (usando o mesmo método do menu)
 local player = game.Players.LocalPlayer
 local runService = game:GetService("RunService")
 -- Configurações (máximas)
 local ANIM_ID = 93224413172183
 local SPEED = 20
 local WEIGHT = 200
 local FADE_IN = 200
 local FADE_OUT = 200
 local ALLOW_INVISIBLE = true
 local currentTrack = nil
 local character = player.Character or player.CharacterAdded:Wait()
 local humanoid = character:WaitForChild("Humanoid")
 local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
 -- Função para extrair ID (igual do menu)
 local function extractIdFromInput(input)
     local num = tonumber(input)
     if num then return num end
     local assetIdMatch = string.match(input, "rbxassetid://(%d+)")
     if assetIdMatch then return tonumber(assetIdMatch) end
     local catalogMatch = string.match(input, "roblox%.com/catalog/(%d+)")
     if catalogMatch then return tonumber(catalogMatch) end
     local libraryMatch = string.match(input, "roblox%.com/library/(%d+)")
     if libraryMatch then return tonumber(libraryMatch) end
     local assetMatch = string.match(input, "roblox%.com/asset/%?id=(%d+)")
     if assetMatch then return tonumber(assetMatch) end
     return tonumber(input)
 end
 -- Função que carrega a animação exatamente como no menu
 local function LoadTrack(id)
     if currentTrack then 
         currentTrack:Stop(0) 
         currentTrack = nil
     end
     local animId
     local ok, result = pcall(function()
         return game:GetObjects("rbxassetid://" .. tostring(id))
     end)
     if ok and result and #result > 0 then
         local anim = result[1]
         if anim:IsA("Animation") then
             animId = anim.AnimationId
         else
             animId = "rbxassetid://" .. tostring(id)
         end
     else
         animId = "rbxassetid://" .. tostring(id)
     end
     local newAnim = Instance.new("Animation")
     newAnim.AnimationId = animId
     local newTrack = humanoid:LoadAnimation(newAnim)
     newTrack.Priority = Enum.AnimationPriority.Action4
     local weight = WEIGHT
     if weight == 0 then weight = 0.001 end
     newTrack:Play(FADE_IN, weight, SPEED)
     newTrack:AdjustSpeed(SPEED)
     
     currentTrack = newTrack
     return newTrack
 end
 -- Para a animação
 local function StopTrack()
     if currentTrack then
         currentTrack:Stop(FADE_OUT)
         currentTrack = nil
     end
 end
 -- Desativa animações padrão do Roblox (opcional, mas evita conflito)
 local function disableRobloxAnimate()
     local animate = character:FindFirstChild("Animate")
     if animate then animate.Disabled = true end
 end
 local function enableRobloxAnimate()
     local animate = character:FindFirstChild("Animate")
     if animate then animate.Disabled = false end
 end
 -- Gerencia colisões (Allow Invisible)
 local originalCollisionStates = {}
 local function saveCollisionStates()
     for _, part in ipairs(character:GetDescendants()) do
         if part:IsA("BasePart") and part ~= humanoidRootPart then
             originalCollisionStates[part] = part.CanCollide
         end
     end
 end
 local function disableCollisions()
     if not ALLOW_INVISIBLE then return end
     for _, part in ipairs(character:GetDescendants()) do
         if part:IsA("BasePart") and part ~= humanoidRootPart then
             part.CanCollide = false
         end
     end
 end
 local function restoreCollisions()
     for part, canCollide in pairs(originalCollisionStates) do
         if part and part.Parent then
             part.CanCollide = canCollide
         end
     end
     originalCollisionStates = {}
 end
 -- Inicia a animação
 local function startAnimation()
     StopTrack()
     task.wait(0.1)
     local track = LoadTrack(ANIM_ID)
     if track and track.IsPlaying then
         disableRobloxAnimate()
     else
         enableRobloxAnimate()
     end
 end
 -- Gerencia colisões
 saveCollisionStates()
 disableCollisions()
 runService.Stepped:Connect(function()
     if character and character.Parent then
         if ALLOW_INVISIBLE then
             disableCollisions()
         else
             restoreCollisions()
         end
     else
         restoreCollisions()
     end
 end)
 -- Quando o personagem renascer
 player.CharacterAdded:Connect(function(newChar)
     character = newChar
     humanoid = character:WaitForChild("Humanoid")
     humanoidRootPart = character:WaitForChild("HumanoidRootPart")
     saveCollisionStates()
     if ALLOW_INVISIBLE then disableCollisions() end
     task.wait(0.2)
     startAnimation()
 end)
 -- Inicialização
 startAnimation()
 end)
 credits:Button("剑",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Jskfhggjxu/My-Script/refs/heads/main/fe-Lolita-glitcher.lua"))()
 end)
 credits:Button("x",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Jskfhggjxu/My-Script/refs/heads/main/ServerHacker-X.lua"))()
 end)
 -- 其他
 local creds = window:Tab("其他",'992417778')
 local credits = creds:section("其他",true)
 credits:Button("闪避",function()
 loadstring(game:HttpGet('https://pastebin.com/raw/kvgFKE1j'))()
 end)
 credits:Button("重力",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/CZnp0N45"))()
 end)
 credits:Button("附身",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty13.lua"))()
 end)
 credits:Button("栽赃",function()
 loadstring(game:HttpGet("https://pastefy.app/i3uwLtVO/raw"))()
 end)
 credits:Button("无限拾取",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/MultiToolsV1/main/script"))()
 end)
 credits:Button("墙跳",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/NBGESCg5"))()
 end)
 credits:Button("道具轨道",function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/Gazer-Ha/Tool-orbit/refs/heads/main/Source'))()
 end)
 credits:Button("背包",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/yzeedw/yzeedw/refs/heads/main/Custom%20Inventory/tuff"))()
 end)
 credits:Button("ac6",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-AC6-Music-Vulnerablity-59292"))()
 end)
 credits:Button("NPC雷达",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptuploader89/Radar-Npc-Tracker-Script-/refs/heads/main/Radar%20Npc%20Tracker%20Script"))()
 end)
 credits:Button("癫狂",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/v1cfPbZ7"))()
 end)
 credits:Button("拖动方块",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty1.lua"))()
 end)
 credits:Button("网易云音乐",function()
 loadstring(game:HttpGet("https://gist.githubusercontent.com/meisdad321-cloud/dda158cf8ec9d771c7764bd08e8d19cb/raw/NeteaseCloudMusicForRoblox.lua"))()
 end)
 credits:Button("查看别人的道具栏",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/xq3b7aUG"))()
 end)
 credits:Button("verity",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/Mb49LJyU"))()
 end)
 credits:Button("pk",function()
 loadstring(game:HttpGet("https://github.com/Tuan792431/RK-/releases/download/RK_Script/RK.lua"))()
 end)
 credits:Button("撞击特效",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/ss8f1nZn"))()
 end)
 -- 脚本
 local creds = window:Tab("脚本",'992417778')
 local credits = creds:section("脚本",true)
 credits:Button("叶脚本",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/ROBLOX-CNVIP-XIAOYE.lua"))()
 end)
 credits:Button("皮脚本",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
 end)
 credits:Button("cx",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-UI-LIB-RELEASE-Catalyst-220920"))()
 end)
 credits:Button("动感星期五",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Funky-Friday-Fire-Hub-18850"))()
 end)
 credits:Button("黑白",function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/tfcygvunbind/Apple/main/黑白脚本加载器'))()
 end)
 credits:Button("夜脚本",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/ylt410/roblox-Script/refs/heads/main/yejiaoben"))()
 end)
 credits:Button("窗脚本",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/pl11451481mvcxz/Roblox-Script-Hub/refs/heads/main/%E7%AA%97%E8%84%9A%E6%9C%AC%E4%B8%AD%E5%BF%83%E5%8A%A0%E8%BD%BD%E5%99%A8"))()
 end)
 credits:Button("tailor",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Jilxi/123/refs/heads/main/Loader.lua"))()
 end)
 credits:Button("致命猴",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/YLw2rxDs"))()
 end)
 local creds = window:Tab("客户端黑客（不包fe",'992417778')
 local credits = creds:section("客户端黑客（不包fe",true)
 credits:Button("tubers67",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-TUBERS67-HUB-226953"))()
 end)
 credits:Button("bkidd gui",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-V99bkidd-Gui-V2-210108"))()
 end)
 credits:Button("tufoos93",function()
 loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Tufoos93-Gui-V3-170271"))()
 end)
 local creds = window:Tab("娱乐",'992417778')
 local credits = creds:section("娱乐",true)
 credits:Button("AK47",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ak47", true))()
 end)
 credits:Button("神秘小屋仪式",function()
 local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local snowmanFolder = workspace.Outside.Snowman

local kids = snowmanFolder:GetChildren()
local objs = {}

local function add(o)
	if not o then return end
	for _, v in ipairs(objs) do
		if v == o then return end
	end
	table.insert(objs, o)
end

add(snowmanFolder:FindFirstChild("Snowman"))
add(kids[2])
add(kids[3])
add(workspace.SettingsFolder.TVFolder.TVModel1)
add(workspace.Outside.Campfire.FirePit)

for _, obj in ipairs(objs) do
	for _, part in ipairs(obj:GetDescendants()) do
		if part:IsA("BasePart") then
			part.CanCollide = false
		end
	end
end

local RADIUS = 7
local orbitSpeed = 2
local spinSpeed = 180
local angle = 0

RunService.RenderStepped:Connect(function(dt)
	if not hrp or hrp.Parent ~= char then
		char = plr.Character
		if char then hrp = char:FindFirstChild("HumanoidRootPart") end
	end
	if not hrp then return end

	angle = angle + orbitSpeed * dt

	for i, obj in ipairs(objs) do

		local a = angle + (i - 1) * (math.pi * 2 / 5)

		local x = math.cos(a) * RADIUS
		local z = math.sin(a) * RADIUS
		local pos = hrp.Position + Vector3.new(x, 0, z)

		local rot = CFrame.Angles(0, math.rad(spinSpeed * (angle / orbitSpeed)), 0)
		obj:PivotTo(CFrame.new(pos) * rot)
	end
end)
end)
credits:Button("迪奥",function()
loadstring(game:HttpGet("https://pastefy.app/REK4Pwj4/raw"))()
end)