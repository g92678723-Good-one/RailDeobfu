local coreGui = game:GetService("CoreGui")
local tweenService = game:GetService("TweenService")
local players = game:GetService("Players")
local runService = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")
local lighting = game:GetService("Lighting")
local workspace = game:GetService("Workspace")

if coreGui:FindFirstChild("NoascriptsKeySystem") then
  coreGui.NoascriptsKeySystem:Destroy()
end

local color = Color3.fromRGB(170, 170, 170)

local noascriptsKeySystem = Instance.new("ScreenGui")
noascriptsKeySystem.Name = "NoascriptsKeySystem"
noascriptsKeySystem.Parent = coreGui
noascriptsKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = noascriptsKeySystem
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BackgroundTransparency = 0.15
mainFrame.Position = UDim2.new(0.5, -200, 0.4, -100)
mainFrame.Size = UDim2.new(0, 400, 0, 200)
mainFrame.ClipsDescendants = true
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 8)
uiCorner.Parent = mainFrame

local uiStroke = Instance.new("UIStroke")
uiStroke.Parent = mainFrame
uiStroke.Color = color
uiStroke.Thickness = 1.5
uiStroke.Transparency = 0

local textLabel = Instance.new("TextLabel")
textLabel.Parent = mainFrame
textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1
textLabel.Position = UDim2.new(0, 0, 0, 10)
textLabel.Size = UDim2.new(1, 0, 0, 30)
textLabel.Font = Enum.Font.GothamBold
textLabel.Text = "NOASCRIPTS HUB V1.0"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextSize = 22

local uiGradient = Instance.new("UIGradient")

uiGradient.Color = ColorSequence.new({
  ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
  ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 100, 100)),
})

uiGradient.Parent = textLabel

local textBox = Instance.new("TextBox")
textBox.Parent = mainFrame
textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textBox.BackgroundTransparency = 0.2
textBox.Position = UDim2.new(0.1, 0, 0.4, 0)
textBox.Size = UDim2.new(0.8, 0, 0, 40)
textBox.Font = Enum.Font.GothamSemibold
textBox.PlaceholderText = "Enter Key Here..."
textBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
textBox.Text = ""
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextSize = 14
textBox.ClearTextOnFocus = false

local uiCorner2 = Instance.new("UICorner")
uiCorner2.CornerRadius = UDim.new(0, 6)
uiCorner2.Parent = textBox

local uiStroke2 = Instance.new("UIStroke")
uiStroke2.Parent = textBox
uiStroke2.Color = Color3.fromRGB(80, 80, 80)
uiStroke2.Thickness = 1

local textButton = Instance.new("TextButton")
textButton.Parent = mainFrame
textButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
textButton.Position = UDim2.new(0.1, 0, 0.7, 0)
textButton.Size = UDim2.new(0.35, 0, 0, 35)
textButton.Font = Enum.Font.GothamBold
textButton.Text = "Get Key"
textButton.TextColor3 = Color3.fromRGB(220, 220, 220)
textButton.TextSize = 14

local uiCorner3 = Instance.new("UICorner")
uiCorner3.CornerRadius = UDim.new(0, 6)
uiCorner3.Parent = textButton

local uiStroke3 = Instance.new("UIStroke")
uiStroke3.Parent = textButton
uiStroke3.Color = Color3.fromRGB(80, 80, 80)
uiStroke3.Thickness = 1

local textButton2 = Instance.new("TextButton")
textButton2.Parent = mainFrame
textButton2.BackgroundColor3 = color
textButton2.Position = UDim2.new(0.55, 0, 0.7, 0)
textButton2.Size = UDim2.new(0.35, 0, 0, 35)
textButton2.Font = Enum.Font.GothamBold
textButton2.Text = "Verify"
textButton2.TextColor3 = Color3.fromRGB(20, 20, 20)
textButton2.TextSize = 14

local uiCorner4 = Instance.new("UICorner")
uiCorner4.CornerRadius = UDim.new(0, 6)
uiCorner4.Parent = textButton2

local textLabel2 = Instance.new("TextLabel")
textLabel2.Parent = mainFrame
textLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel2.BackgroundTransparency = 1
textLabel2.Position = UDim2.new(0, 0, 0.55, 0)
textLabel2.Size = UDim2.new(1, 0, 0, 20)
textLabel2.Font = Enum.Font.Gotham
textLabel2.Text = ""
textLabel2.TextColor3 = Color3.fromRGB(255, 80, 80)
textLabel2.TextSize = 12

local renderStepped = runService.RenderStepped
local v1

local connect = renderStepped:Connect(function()
  if coreGui:FindFirstChild("NoascriptsKeySystem") then
    local v2 = game
    v2:GetService("UserInputService").MouseIconEnabled = true

    local v3 = game
    v3:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
  elseif v1 then
    v1:Disconnect()
  end
end)

local function f1(p1, p2, p3)
  local create = tweenService:Create(p1, TweenInfo.new(
    p3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out
  ), p2)

  create:Play()
  return create
end

v1 = connect

mainFrame.Position = UDim2.new(0.5, 0, 0.6, 0)
mainFrame.BackgroundTransparency = 1

uiStroke.Transparency = 1
textLabel.TextTransparency = 1

textBox.TextTransparency = 1
textBox.BackgroundTransparency = 1

textButton.TextTransparency = 1
textButton.BackgroundTransparency = 1

textButton2.TextTransparency = 1
textButton2.BackgroundTransparency = 1

f1(mainFrame, { Position = UDim2.new(0.5, 0, 0.5, 0), BackgroundTransparency = 0.15 }, 1)
f1(uiStroke, { Transparency = 0 }, 1)
f1(textLabel, { TextTransparency = 0 }, 1)
f1(textBox, { TextTransparency = 0, BackgroundTransparency = 0.2 }, 1)
f1(textButton, { TextTransparency = 0, BackgroundTransparency = 0 }, 1)
f1(textButton2, { TextTransparency = 0, BackgroundTransparency = 0 }, 1)

textButton.MouseEnter:Connect(function()
  f1(textButton, { BackgroundColor3 = Color3.fromRGB(60, 60, 60) }, 0.2)
end)

textButton.MouseLeave:Connect(function()
  f1(textButton, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) }, 0.2)
end)

textButton2.MouseEnter:Connect(function()
  f1(textButton2, { BackgroundColor3 = Color3.fromRGB(200, 200, 200) }, 0.2)
end)

textButton2.MouseLeave:Connect(function() f1(textButton2, { BackgroundColor3 = color }, 0.2) end)

textButton.MouseButton1Click:Connect(function()
  textLabel2.Text = "Link copied to clipboard!"
  textLabel2.TextColor3 = color

  if setclipboard then
    setclipboard("https://linkvertise.com/3601903/RAYjp5C0VXV7?o=sharing")
  else
    textLabel2.Text = "Your executor doesn't support clipboard copying."
  end
end)

local function f2()
  print("Welcome to " .. "NOASCRIPTS HUB V1.0" .. ", " .. players.LocalPlayer.Name .. "!")
  local currentCamera = workspace.CurrentCamera
  local localPlayer = players.LocalPlayer

  local v4 = {
    UI = {
      ToggleKey = Enum.KeyCode.Insert,
      MenuOpen = true,
      Accent = Color3.fromRGB(180, 180, 180),
      Binding = false,
    },
    Visuals = {
      Enabled = false,
      Box = false,
      Name = false,
      Health = false,
      Distance = false,
      Weapon = false,
      Skeleton = false,
      Tracers = false,
      TeamCheck = false,
      VisibleCheck = false,
    },
    Aimbot = {
      Enabled = false,
      AimKey = Enum.UserInputType.MouseButton2,
      TargetPart = "Head",
      FOV = 150,
      ShowFOV = false,
      Prediction = 0.045,
      VisibleCheck = false,
      TeamCheck = false,
      Method = "Camera",
    },
    Misc = { Fullbright = false, Crosshair = false },
  }

  local noascriptsEliteMenu = Instance.new("ScreenGui")
  noascriptsEliteMenu.Name = "NoascriptsEliteMenu"
  noascriptsEliteMenu.Parent = coreGui
  noascriptsEliteMenu.ResetOnSpawn = false

  local instance = Instance.new("Frame", noascriptsEliteMenu)
  instance.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
  instance.BorderColor3 = Color3.fromRGB(45, 45, 45)
  instance.Position = UDim2.new(0.5, -275, 0.5, -200)
  instance.Size = UDim2.new(0, 550, 0, 420)
  instance.Active = true
  instance.Draggable = true

  local instance2 = Instance.new("Frame", instance)
  instance2.BackgroundColor3 = v4.UI.Accent
  instance2.BorderSizePixel = 0
  instance2.Size = UDim2.new(1, 0, 0, 3)

  local instance3 = Instance.new("TextLabel", instance)
  instance3.BackgroundTransparency = 1
  instance3.Position = UDim2.new(0, 15, 0, 5)
  instance3.Size = UDim2.new(1, -20, 0, 20)
  instance3.Font = Enum.Font.Code
  instance3.Text = "noascripts // elite_build (fps_max)"
  instance3.TextColor3 = Color3.fromRGB(220, 220, 220)
  instance3.TextSize = 13
  instance3.TextXAlignment = Enum.TextXAlignment.Left

  local instance4 = Instance.new("Frame", instance)
  instance4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  instance4.BorderColor3 = Color3.fromRGB(40, 40, 40)
  instance4.Position = UDim2.new(0, 10, 0, 35)
  instance4.Size = UDim2.new(1, -20, 1, -45)

  local instance5 = Instance.new("Frame", instance4)
  instance5.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
  instance5.BorderColor3 = Color3.fromRGB(40, 40, 40)
  instance5.Size = UDim2.new(0, 140, 1, 0)

  Instance.new("UIListLayout", instance5).SortOrder = Enum.SortOrder.LayoutOrder

  local instance6 = Instance.new("Frame", instance4)
  instance6.BackgroundTransparency = 1
  instance6.Position = UDim2.new(0, 140, 0, 0)
  instance6.Size = UDim2.new(1, -140, 1, 0)

  local v5 = {}

  local function f3(text, p4)
    local instance7 = Instance.new("TextButton", instance5)
    instance7.BackgroundColor3 = p4 and Color3.fromRGB(28, 28, 28) or Color3.fromRGB(18, 18, 18)
    instance7.BorderSizePixel = 0
    instance7.Size = UDim2.new(1, 0, 0, 35)
    instance7.Font = Enum.Font.Code
    instance7.Text = text
    instance7.TextColor3 = p4 and v4.UI.Accent or Color3.fromRGB(140, 140, 140)
    instance7.TextSize = 13

    local instance8 = Instance.new("ScrollingFrame", instance6)
    instance8.Size = UDim2.new(1, 0, 1, 0)
    instance8.BackgroundTransparency = 1
    instance8.ScrollBarThickness = 2
    instance8.Visible = p4

    local instance9 = Instance.new("UIListLayout", instance8)
    instance9.FillDirection = Enum.FillDirection.Horizontal
    instance9.SortOrder = Enum.SortOrder.LayoutOrder
    instance9.Padding = UDim.new(0, 10)

    local instance10 = Instance.new("Frame", instance8)
    instance10.Size = UDim2.new(0.5, -5, 1, 0)
    instance10.BackgroundTransparency = 1

    local instance11 = Instance.new("Frame", instance8)
    instance11.Size = UDim2.new(0.5, -5, 1, 0)
    instance11.BackgroundTransparency = 1

    Instance.new("UIListLayout", instance10).Padding = UDim.new(0, 10)
    Instance.new("UIListLayout", instance11).Padding = UDim.new(0, 10)

    table.insert(v5, { Btn = instance7, Cont = instance8 })

    instance7.MouseButton1Click:Connect(function()
      for index, value in ipairs(v5) do
        value.Btn.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
        value.Btn.TextColor3 = Color3.fromRGB(140, 140, 140)
        value.Cont.Visible = false
      end

      instance7.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
      instance7.TextColor3 = v4.UI.Accent

      instance8.Visible = true
    end)

    return instance10, instance11
  end

  local function f4(p5, p6)
    local instance12 = Instance.new("Frame", p5)
    instance12.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    instance12.BorderColor3 = Color3.fromRGB(40, 40, 40)
    instance12.Size = UDim2.new(1, 0, 0, 20)

    local instance13 = Instance.new("TextLabel", instance12)
    instance13.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    instance13.BorderSizePixel = 0
    instance13.Position = UDim2.new(0, 10, 0, -7)
    instance13.Size = UDim2.new(0, 110, 0, 14)
    instance13.Font = Enum.Font.Code
    instance13.Text = " " .. p6 .. " "
    instance13.TextColor3 = Color3.fromRGB(210, 210, 210)
    instance13.TextSize = 12

    local instance14 = Instance.new("UIListLayout", instance12)
    instance14.SortOrder = Enum.SortOrder.LayoutOrder
    instance14.Padding = UDim.new(0, 5)

    local instance15 = Instance.new("UIPadding", instance12)
    instance15.PaddingTop = UDim.new(0, 15)
    instance15.PaddingLeft = UDim.new(0, 10)
    instance15.PaddingRight = UDim.new(0, 10)
    instance15.PaddingBottom = UDim.new(0, 10)

    instance14:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
      instance12.Size = UDim2.new(1, 0, 0, instance14.AbsoluteContentSize.Y + 25)
    end)

    return instance12
  end

  local function f5(p7, text2, p8, p9)
    local instance16 = Instance.new("TextButton", p7)
    instance16.BackgroundTransparency = 1
    instance16.Size = UDim2.new(1, 0, 0, 20)
    instance16.Text = ""

    local instance17 = Instance.new("Frame", instance16)
    instance17.BackgroundColor3 = v4[p8][p9] and v4.UI.Accent or Color3.fromRGB(30, 30, 30)
    instance17.BorderColor3 = Color3.fromRGB(10, 10, 10)
    instance17.Position = UDim2.new(0, 0, 0.5, -6)
    instance17.Size = UDim2.new(0, 12, 0, 12)

    local instance18 = Instance.new("TextLabel", instance16)
    instance18.BackgroundTransparency = 1
    instance18.Position = UDim2.new(0, 22, 0, 0)
    instance18.Size = UDim2.new(1, -22, 1, 0)
    instance18.Font = Enum.Font.Code
    instance18.Text = text2
    instance18.TextColor3 = Color3.fromRGB(200, 200, 200)
    instance18.TextSize = 12
    instance18.TextXAlignment = Enum.TextXAlignment.Left

    instance16.MouseButton1Click:Connect(function()
      v4[p8][p9] = not v4[p8][p9]
      instance17.BackgroundColor3 = v4[p8][p9] and v4.UI.Accent or Color3.fromRGB(30, 30, 30)
    end)
  end

  local function f6(p10, p11, p12, p13, p14, p15, p16)
    local instance19 = Instance.new("Frame", p10)
    instance19.BackgroundTransparency = 1
    instance19.Size = UDim2.new(1, 0, 0, 35)

    local instance20 = Instance.new("TextLabel", instance19)
    instance20.BackgroundTransparency = 1
    instance20.Size = UDim2.new(1, 0, 0, 15)
    instance20.Font = Enum.Font.Code
    instance20.Text = p11 .. ": " .. tostring(v4[p12][p13])
    instance20.TextColor3 = Color3.fromRGB(200, 200, 200)
    instance20.TextSize = 12
    instance20.TextXAlignment = Enum.TextXAlignment.Left

    local instance21 = Instance.new("TextButton", instance19)
    instance21.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    instance21.BorderColor3 = Color3.fromRGB(15, 15, 15)
    instance21.Position = UDim2.new(0, 0, 0, 20)
    instance21.Size = UDim2.new(1, 0, 0, 8)
    instance21.Text = ""
    instance21.AutoButtonColor = false

    local instance22 = Instance.new("Frame", instance21)
    instance22.BackgroundColor3 = v4.UI.Accent
    instance22.BorderSizePixel = 0
    instance22.Size = UDim2.new(math.clamp((v4[p12][p13] - p14) / (p15 - p14), 0, 1), 0, 1, 0)

    local v6 = false

    local function f7(p17)
      local v7 = math.clamp((p17.Position.X - instance21.AbsolutePosition.X)
        / instance21.AbsoluteSize.X, 0, 1)

      local v8 = p14 + (p15 - p14) * v7
      local v9

      if not p16 then
        v9 = math.floor(v8)
      else
        v9 = tonumber(string.format("%.3f", v8))
      end

      v4[p12][p13] = v9
      instance22.Size = UDim2.new(v7, 0, 1, 0)
      instance20.Text = p11 .. ": " .. tostring(v9)
    end

    instance21.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 then
        v6 = true
        f7(input)
      end
    end)

    userInputService.InputEnded:Connect(function(input2)
      if input2.UserInputType == Enum.UserInputType.MouseButton1 then
        v6 = false
      end
    end)

    userInputService.InputChanged:Connect(function(input3)
      if v6 and input3.UserInputType == Enum.UserInputType.MouseMovement then
        f7(input3)
      end
    end)
  end

  local function f8(p18, text3, p19, p20, p21)
    local instance23 = Instance.new("Frame", p18)
    instance23.BackgroundTransparency = 1
    instance23.Size = UDim2.new(1, 0, 0, 40)

    local instance24 = Instance.new("TextLabel", instance23)
    instance24.BackgroundTransparency = 1
    instance24.Size = UDim2.new(1, 0, 0, 15)
    instance24.Font = Enum.Font.Code
    instance24.Text = text3
    instance24.TextColor3 = Color3.fromRGB(200, 200, 200)
    instance24.TextSize = 12
    instance24.TextXAlignment = Enum.TextXAlignment.Left

    local instance25 = Instance.new("TextButton", instance23)
    instance25.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    instance25.BorderColor3 = Color3.fromRGB(45, 45, 45)
    instance25.Position = UDim2.new(0, 0, 0, 18)
    instance25.Size = UDim2.new(1, 0, 0, 22)
    instance25.Font = Enum.Font.Code
    instance25.Text = tostring(v4[p19][p20])
    instance25.TextColor3 = Color3.fromRGB(220, 220, 220)
    instance25.TextSize = 12

    local v10 = 1

    for index2, value2 in ipairs(p21) do
      if value2 == v4[p19][p20] then
        v10 = index2
        break
      end
    end

    instance25.MouseButton1Click:Connect(function()
      v10 = v10 + 1

      if v10 > #p21 then
        v10 = 1
      end

      v4[p19][p20] = p21[v10]
      instance25.Text = tostring(p21[v10])
    end)
  end

  local function f9(p22, text4, p23, p24)
    local instance26 = Instance.new("Frame", p22)
    instance26.BackgroundTransparency = 1
    instance26.Size = UDim2.new(1, 0, 0, 22)

    local instance27 = Instance.new("TextLabel", instance26)
    instance27.BackgroundTransparency = 1
    instance27.Size = UDim2.new(0.6, 0, 1, 0)
    instance27.Font = Enum.Font.Code
    instance27.Text = text4
    instance27.TextColor3 = Color3.fromRGB(200, 200, 200)
    instance27.TextSize = 12
    instance27.TextXAlignment = Enum.TextXAlignment.Left

    local instance28 = Instance.new("TextButton", instance26)
    instance28.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    instance28.BorderColor3 = Color3.fromRGB(45, 45, 45)
    instance28.Position = UDim2.new(0.6, 0, 0, 0)
    instance28.Size = UDim2.new(0.4, 0, 1, 0)
    instance28.Font = Enum.Font.Code
    instance28.Text = v4[p23][p24].Name
    instance28.TextColor3 = v4.UI.Accent
    instance28.TextSize = 11

    instance28.MouseButton1Click:Connect(function()
      instance28.Text = "..."
      v4.UI.Binding = true
    end)

    userInputService.InputBegan:Connect(function(input4)
      if v4.UI.Binding and instance28.Text == "..." then
        if input4.UserInputType == Enum.UserInputType.Keyboard then
          if input4.KeyCode ~= Enum.KeyCode.Unknown then
            v4[p23][p24] = input4.KeyCode
            instance28.Text = input4.KeyCode.Name
            task.wait(0.1)
            v4.UI.Binding = false
          end
        elseif input4.UserInputType == Enum.UserInputType.MouseButton1
          or input4.UserInputType == Enum.UserInputType.MouseButton2
          or input4.UserInputType == Enum.UserInputType.MouseButton3 then
          v4[p23][p24] = input4.UserInputType
          instance28.Text = input4.UserInputType.Name
          task.wait(0.1)
          v4.UI.Binding = false
        end
      end
    end)
  end

  local v11, v12 = f3("Visuals", true)
  local v13, v14 = f3("Aimbot", false)
  local v15 = f3("Misc", false)
  local v16 = f4(v11, "Player ESP")

  f5(v16, "Master ESP Switch", "Visuals", "Enabled")
  f5(v16, "Draw Box", "Visuals", "Box")
  f5(v16, "Draw Name", "Visuals", "Name")
  f5(v16, "Draw Health", "Visuals", "Health")
  f5(v16, "Draw Distance", "Visuals", "Distance")
  f5(v16, "Draw Weapon", "Visuals", "Weapon")
  f5(v16, "Draw Skeleton", "Visuals", "Skeleton")
  f5(v16, "Draw Snaplines", "Visuals", "Tracers")

  local v17 = f4(v12, "ESP Filters")

  f5(v17, "Team Check", "Visuals", "TeamCheck")
  f5(v17, "Visible Check (Wall)", "Visuals", "VisibleCheck")

  local v18 = f4(v13, "Aimbot Main")
  f5(v18, "Enable Aimbot", "Aimbot", "Enabled")
  f9(v18, "Aim Keybind", "Aimbot", "AimKey")
  f5(v18, "Draw FOV Circle", "Aimbot", "ShowFOV")
  f6(v18, "FOV Radius", "Aimbot", "FOV", 10, 600, false)
  local v19 = f4(v14, "Aim Filters & Tuning")
  f8(v19, "Target Hitbox", "Aimbot", "TargetPart", { "Head", "HumanoidRootPart", "Torso" })
  f6(v19, "Velocity Prediction", "Aimbot", "Prediction", 0, 0.3, true)

  f5(v19, "Team Check", "Aimbot", "TeamCheck")
  f5(v19, "Visible Check", "Aimbot", "VisibleCheck")

  local v20 = f4(v15, "Game Utility")
  f9(v20, "Menu Toggle Key", "UI", "ToggleKey")

  f5(v20, "Fullbright (Night Vision)", "Misc", "Fullbright")
  f5(v20, "Center Crosshair", "Misc", "Crosshair")

  userInputService.InputBegan:Connect(function(input5, p25)
    if p25 then
      return
    end

    if not v4.UI.Binding and input5.KeyCode == v4.UI.ToggleKey then
      v4.UI.MenuOpen = not v4.UI.MenuOpen
      instance.Visible = v4.UI.MenuOpen
    end
  end)

  local circle = Drawing.new("Circle")
  circle.Color = v4.UI.Accent
  circle.Thickness = 1.2
  circle.Filled = false

  local line = Drawing.new("Line")
  line.Thickness = 1.5
  line.Color = v4.UI.Accent

  local line2 = Drawing.new("Line")
  line2.Thickness = 1.5
  line2.Color = v4.UI.Accent

  local v21 = {}
  local v22 = {}

  local v23 = {
    { "Head", "UpperTorso" }, { "UpperTorso", "LowerTorso" }, { "UpperTorso", "LeftUpperArm" },
    { "LeftUpperArm", "LeftLowerArm" }, { "LeftLowerArm", "LeftHand" },
    { "UpperTorso", "RightUpperArm" }, { "RightUpperArm", "RightLowerArm" },
    { "RightLowerArm", "RightHand" }, { "LowerTorso", "LeftUpperLeg" },
    { "LeftUpperLeg", "LeftLowerLeg" }, { "LeftLowerLeg", "LeftFoot" },
    { "LowerTorso", "RightUpperLeg" }, { "RightUpperLeg", "RightLowerLeg" },
    { "RightLowerLeg", "RightFoot" },
  }

  local function f10(p26)
    if not p26 then
      return false
    elseif p26 == localPlayer then
      return true
    else
      if p26.Team ~= nil and localPlayer.Team ~= nil and p26.Team == localPlayer.Team then
        return true
      end

      for index3, value3 in ipairs({ "Team", "team", "Side", "side", "Faction", "faction" }) do
        if localPlayer:GetAttribute(value3) ~= nil and p26:GetAttribute(value3) ~= nil then
          if localPlayer:GetAttribute(value3) == p26:GetAttribute(value3) then
            return true
          end
        end
      end

      return false
    end
  end

  task.spawn(function()
    while task.wait(0.2) do
      local v24 = {}

      for index4, value4 in ipairs(players:GetPlayers()) do
        if value4 == localPlayer then
        else
          local character = value4.Character

          if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")

            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
              or character.PrimaryPart

            local head = character:FindFirstChild("Head")
            local v25 = humanoid
            local tool = character:FindFirstChildOfClass("Tool")

            if humanoid then
              v25 = humanoid.Health > 0 and humanoidRootPart and head
            end

            if v25 then
              v24[value4] = {
                Char = character,
                Hum = humanoid,
                Root = humanoidRootPart,
                Head = head,
                Tool = tool and tool.Name or "Hands",
                IsTeam = f10(value4),
                LastVisCheck = 0,
                IsVisCached = false,
              }
            end
          end
        end
      end

      v22 = v24
    end
  end)

  local function f11(p27)
    local v26 = tick()

    if v26 - p27.LastVisCheck > 0.1 then
      p27.LastVisCheck = v26
      local position = currentCamera.CFrame.Position
      local position2 = p27.Root.Position

      local raycastParams = RaycastParams.new()
      raycastParams.FilterDescendantsInstances = { localPlayer.Character, currentCamera }
      raycastParams.FilterType = Enum.RaycastFilterType.Exclude
      raycastParams.IgnoreWater = true

      local raycast = workspace:Raycast(position, position2 - position, raycastParams)
      p27.IsVisCached = raycast == nil or raycast.Instance:IsDescendantOf(p27.Char)
    end

    return p27.IsVisCached
  end

  local function f12(p28, p29)
    local position3 = currentCamera.CFrame.Position
    local position4 = p28.Position

    local raycastParams2 = RaycastParams.new()
    raycastParams2.FilterDescendantsInstances = { localPlayer.Character, currentCamera }
    raycastParams2.FilterType = Enum.RaycastFilterType.Exclude
    raycastParams2.IgnoreWater = true

    local raycast2 = workspace:Raycast(position3, position4 - position3, raycastParams2)
    return raycast2 == nil or raycast2.Instance:IsDescendantOf(p29)
  end

  local function f13(p30)
    if not v21[p30] then
      v21[p30] = {
        Box = Drawing.new("Square"),
        BoxOut = Drawing.new("Square"),
        Name = Drawing.new("Text"),
        HealthBar = Drawing.new("Square"),
        HealthOut = Drawing.new("Square"),
        Dist = Drawing.new("Text"),
        Weapon = Drawing.new("Text"),
        Tracer = Drawing.new("Line"),
        Skeleton = {},
      }

      local v27 = v21[p30]
      v27.Box.Thickness = 1
      v27.Box.Filled = false
      v27.BoxOut.Thickness = 3
      v27.BoxOut.Color = Color3.new(0, 0, 0)
      v27.BoxOut.Filled = false
      v27.HealthOut.Color = Color3.new(0, 0, 0)
      v27.HealthOut.Thickness = 1
      v27.HealthOut.Filled = true
      v27.HealthBar.Thickness = 1
      v27.HealthBar.Filled = true
      v27.Name.Size = 13
      v27.Name.Center = true
      v27.Name.Outline = true
      v27.Name.Font = 2
      v27.Dist.Size = 12
      v27.Dist.Center = true
      v27.Dist.Outline = true
      v27.Dist.Font = 2
      v27.Weapon.Size = 12
      v27.Weapon.Center = true
      v27.Weapon.Outline = true
      v27.Weapon.Font = 2
      v27.Tracer.Thickness = 1

      for i = 1, #v23 do
        table.insert(v27.Skeleton, Drawing.new("Line"))
      end
    end

    return v21[p30]
  end

  local function f14(p31)
    p31.Box.Visible = false
    p31.BoxOut.Visible = false
    p31.Name.Visible = false
    p31.HealthBar.Visible = false
    p31.HealthOut.Visible = false
    p31.Dist.Visible = false
    p31.Weapon.Visible = false
    p31.Tracer.Visible = false

    for index5, value5 in ipairs(p31.Skeleton) do
      value5.Visible = false
    end
  end

  players.PlayerRemoving:Connect(function(player)
    if v21[player] then
      local v28 = v21[player]
      v28.Box:Remove()
      v28.BoxOut:Remove()
      v28.Name:Remove()
      v28.HealthBar:Remove()
      v28.HealthOut:Remove()
      v28.Dist:Remove()
      v28.Weapon:Remove()
      v28.Tracer:Remove()

      for index6, value6 in ipairs(v28.Skeleton) do
        value6:Remove()
      end

      v21[player] = nil
    end
  end)

  local function f15()
    local fov = v4.Aimbot.FOV
    local getMouseLocation = userInputService:GetMouseLocation()
    local v29

    for key, value7 in pairs(v22) do
      if v4.Aimbot.TeamCheck and value7.IsTeam then
      else
        local findFirstChild = value7.Char:FindFirstChild(v4.Aimbot.TargetPart) or value7.Head

        if findFirstChild then
          if v4.Aimbot.VisibleCheck and not f12(findFirstChild, value7.Char) then
          else
            local v30, v31 = currentCamera:WorldToViewportPoint(findFirstChild.Position
              + value7.Root.Velocity * v4.Aimbot.Prediction)

            if v31 and v30.Z > 0 then
              local magnitude = (Vector2.new(v30.X, v30.Y) - getMouseLocation).Magnitude

              if magnitude < fov then
                v29 = key
                fov = magnitude
              end
            end
          end
        end
      end
    end

    return v29
  end

  local v32

  runService.RenderStepped:Connect(function()
    local getMouseLocation2 = userInputService:GetMouseLocation()
    circle.Visible = v4.Aimbot.Enabled and v4.Aimbot.ShowFOV

    if circle.Visible then
      circle.Radius = v4.Aimbot.FOV
      circle.Position = getMouseLocation2
    end

    line.Visible = v4.Misc.Crosshair
    line2.Visible = v4.Misc.Crosshair

    if line.Visible then
      local vector = Vector2.new(
        currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y / 2
      )

      line.From = Vector2.new(vector.X - 8, vector.Y)
      line.To = Vector2.new(vector.X + 8, vector.Y)

      line2.From = Vector2.new(vector.X, vector.Y - 8)
      line2.To = Vector2.new(vector.X, vector.Y + 8)
    end

    if v4.Misc.Fullbright then
      lighting.Ambient = Color3.fromRGB(255, 255, 255)
      lighting.Brightness = 2
      lighting.ClockTime = 14
    end

    if v4.Aimbot.Enabled then
      local isMouseButtonPressed = false

      if typeof(v4.Aimbot.AimKey) == "EnumItem" then
        if v4.Aimbot.AimKey.EnumType == Enum.UserInputType then
          isMouseButtonPressed = userInputService:IsMouseButtonPressed(v4.Aimbot.AimKey)
        elseif v4.Aimbot.AimKey.EnumType == Enum.KeyCode then
          isMouseButtonPressed = userInputService:IsKeyDown(v4.Aimbot.AimKey)
        end
      end

      if isMouseButtonPressed then
        if v32 then
          local v33 = v22[v32]

          if not v33 or v4.Aimbot.TeamCheck and v33.IsTeam then
            v32 = nil
          else
            local findFirstChild2 = v33.Char:FindFirstChild(v4.Aimbot.TargetPart) or v33.Head

            if v4.Aimbot.VisibleCheck and not f12(findFirstChild2, v33.Char) then
              v32 = nil
            else
              local v34, v35 = currentCamera:WorldToViewportPoint(findFirstChild2.Position
                + v33.Root.Velocity * v4.Aimbot.Prediction)

              local magnitude2 = (Vector2.new(v34.X, v34.Y) - getMouseLocation2).Magnitude

              if not v35 or magnitude2 > v4.Aimbot.FOV * 1.5 then
                v32 = nil
              end
            end
          end
        end

        if not v32 then
          v32 = f15()
        end

        if v32 and v22[v32] then
          local v36 = v22[v32]

          local v37 = (v36.Char:FindFirstChild(v4.Aimbot.TargetPart) or v36.Head).Position
            + v36.Root.Velocity * v4.Aimbot.Prediction

          local v38 = { currentCamera:WorldToViewportPoint(v37) }

          if v38[2] then
            currentCamera.CFrame = CFrame.lookAt(currentCamera.CFrame.Position, v37)
          end
        end
      else
        v32 = nil
      end
    else
      v32 = nil
    end

    for key2, value8 in pairs(v22) do
      local v39 = f13(key2)

      if not v4.Visuals.Enabled then
        f14(v39)
      elseif v4.Visuals.TeamCheck and value8.IsTeam then
        f14(v39)
      elseif v4.Visuals.VisibleCheck and not f11(value8) then
        f14(v39)
      else
        local v40, v41 = currentCamera:WorldToViewportPoint(value8.Root.Position)

        if not v41 then
          f14(v39)
        else
          local worldToViewportPoint = currentCamera:WorldToViewportPoint(value8.Head.Position
            + Vector3.new(0, 0.5, 0))

          local worldToViewportPoint2 = currentCamera:WorldToViewportPoint(value8.Root.Position
            - Vector3.new(0, 3, 0))

          local v42 = math.abs(worldToViewportPoint.Y - worldToViewportPoint2.Y)
          local v43 = v42 * 0.65

          local color2 = value8.IsTeam and Color3.new(0, 1, 0)
            or v32 == key2 and Color3.new(1, 0, 0) or v4.UI.Accent

          if v4.Visuals.Box then
            v39.BoxOut.Visible = true
            v39.Box.Visible = true
            v39.BoxOut.Size = Vector2.new(v43, v42)
            v39.BoxOut.Position = Vector2.new(v40.X - v43 / 2, worldToViewportPoint.Y)
            v39.Box.Size = Vector2.new(v43, v42)
            v39.Box.Position = Vector2.new(v40.X - v43 / 2, worldToViewportPoint.Y)
            v39.Box.Color = color2
          else
            v39.Box.Visible = false
            v39.BoxOut.Visible = false
          end

          if v4.Visuals.Name then
            v39.Name.Visible = true
            v39.Name.Text = key2.Name
            v39.Name.Color = color2
            v39.Name.Position = Vector2.new(v40.X, worldToViewportPoint.Y - 15)
          else
            v39.Name.Visible = false
          end

          if v4.Visuals.Health then
            v39.HealthOut.Visible = true
            v39.HealthBar.Visible = true

            local v44 = value8.Hum.Health / value8.Hum.MaxHealth

            v39.HealthOut.Size = Vector2.new(3, v42)
            v39.HealthOut.Position = Vector2.new(v40.X - v43 / 2 - 5, worldToViewportPoint.Y)
            v39.HealthBar.Size = Vector2.new(1, v42 * v44)

            v39.HealthBar.Position = Vector2.new(
              v40.X - v43 / 2 - 4, worldToViewportPoint.Y + v42 * (1 - v44)
            )

            v39.HealthBar.Color = Color3.fromHSV(v44 * 0.3, 1, 1)
          else
            v39.HealthOut.Visible = false
            v39.HealthBar.Visible = false
          end

          if v4.Visuals.Distance then
            local v45 = math.floor((currentCamera.CFrame.Position - value8.Root.Position).Magnitude)

            v39.Dist.Visible = true
            v39.Dist.Text = tostring(v45) .. " st"
            v39.Dist.Color = Color3.new(1, 1, 1)
            v39.Dist.Position = Vector2.new(v40.X, worldToViewportPoint.Y + v42 + 2)
          else
            v39.Dist.Visible = false
          end

          if v4.Visuals.Weapon then
            v39.Weapon.Visible = true
            v39.Weapon.Text = value8.Tool
            v39.Weapon.Color = Color3.new(0.8, 0.8, 0.8)

            v39.Weapon.Position = Vector2.new(v40.X, worldToViewportPoint.Y + v42
              + (v4.Visuals.Distance and 15 or 2))
          else
            v39.Weapon.Visible = false
          end

          if v4.Visuals.Tracers then
            v39.Tracer.Visible = true
            v39.Tracer.Color = color2

            v39.Tracer.From = Vector2.new(
              currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y
            )

            v39.Tracer.To = Vector2.new(v40.X, worldToViewportPoint2.Y)
          else
            v39.Tracer.Visible = false
          end

          if v4.Visuals.Skeleton then
            for index7, value9 in ipairs(v23) do
              local findFirstChild3 = value8.Char:FindFirstChild(value9[1])
              local findFirstChild4 = value8.Char:FindFirstChild(value9[2])

              if findFirstChild3 and findFirstChild4 then
                local v46, v47 = currentCamera:WorldToViewportPoint(findFirstChild3.Position)
                local v48, v49 = currentCamera:WorldToViewportPoint(findFirstChild4.Position)

                if v47 and v49 then
                  v39.Skeleton[index7].Visible = true
                  v39.Skeleton[index7].Color = color2
                  v39.Skeleton[index7].From = Vector2.new(v46.X, v46.Y)
                  v39.Skeleton[index7].To = Vector2.new(v48.X, v48.Y)
                else
                  v39.Skeleton[index7].Visible = false
                end
              else
                v39.Skeleton[index7].Visible = false
              end
            end
          else
            for index8, value10 in ipairs(v39.Skeleton) do
              value10.Visible = false
            end
          end
        end
      end
    end

    for key3, value11 in pairs(v21) do
      if not v22[key3] then
        f14(value11)
      end
    end

    if v4.UI.MenuOpen then
      userInputService.MouseIconEnabled = true
      userInputService.MouseBehavior = Enum.MouseBehavior.Default
    end
  end)
end

textButton2.MouseButton1Click:Connect(function()
  if textBox.Text == "HUMANOID-UNLIMITED-2026" then
    textLabel2.Text = "Key Validated! Loading Noascripts Hub..."
    textLabel2.TextColor3 = Color3.fromRGB(80, 255, 80)

    f1(mainFrame, { Position = UDim2.new(0.5, 0, 0.4, 0), BackgroundTransparency = 1 }, 1)
    f1(uiStroke, { Transparency = 1 }, 1)
    f1(textLabel, { TextTransparency = 1 }, 1)
    f1(textBox, { TextTransparency = 1, BackgroundTransparency = 1 }, 1)
    f1(textButton, { TextTransparency = 1, BackgroundTransparency = 1 }, 1)
    f1(textButton2, { TextTransparency = 1, BackgroundTransparency = 1 }, 1)
    f1(textLabel2, { TextTransparency = 1 }, 1)

    task.wait(1)
    noascriptsKeySystem:Destroy()
    f2()
  else
    textLabel2.Text = "Invalid Key! Please try again."
    textLabel2.TextColor3 = Color3.fromRGB(255, 80, 80)

    local position5 = mainFrame.Position

    f1(mainFrame, { Position = position5 + UDim2.new(0, 10, 0, 0) }, 0.05).Completed:Wait()
    f1(mainFrame, { Position = position5 - UDim2.new(0, 10, 0, 0) }, 0.05).Completed:Wait()
    f1(mainFrame, { Position = position5 + UDim2.new(0, 5, 0, 0) }, 0.05).Completed:Wait()
    f1(mainFrame, { Position = position5 }, 0.05)
  end
end)
