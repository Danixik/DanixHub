--[[

 ________ _______   ________  _________  ___  ___  _______   ________                             ___  ___  ___  ___       ___  ________     
|\  _____\\  ___ \ |\   __  \|\___   ___\\  \|\  \|\  ___ \ |\   __  \                           |\  \|\  \|\  \|\  \     |\  \|\   __  \    
\ \  \__/\ \   __/|\ \  \|\  \|___ \  \_\ \  \\\  \ \   __/|\ \  \|\  \        ____________      \ \  \\\  \ \  \ \  \    \ \  \ \  \|\ /_   
 \ \   __\\ \  \_|/_\ \   __  \   \ \  \ \ \   __  \ \  \_|/_\ \   _  _\      |\____________\     \ \  \\\  \ \  \ \  \    \ \  \ \   __  \  
  \ \  \_| \ \  \_|\ \ \  \ \  \   \ \  \ \ \  \ \  \ \  \_|\ \ \  \\  \|     \|____________|      \ \  \\\  \ \  \ \  \____\ \  \ \  \|\  \ 
   \ \__\   \ \_______\ \__\ \__\   \ \__\ \ \__\ \__\ \_______\ \__\\ _\                           \ \_______\ \__\ \_______\ \__\ \_______\
    \|__|    \|_______|\|__|\|__|    \|__|  \|__|\|__|\|_______|\|__|\|__|                           \|_______|\|__|\|_______|\|__|\|_______|
                                                                                                                                             
                                                                                                                                             
                                                                                                                                             
 Made by Danix#6637
 HUGE THANKS TO m4tt#1986 (he is a real G)
]]--


--[[
DO NOT EDIT THE CODE IF U DONT KNOW WHAT U DOING IT CAN STOP WORKING FOR YOU
]]--

local UserInputService = game:GetService('UserInputService')

local library = {}

function library:CreateWindow(text,undertext)
	local FeatherUI = Instance.new("ScreenGui")
	local UIbackround = Instance.new("Frame")
	local TabHolder = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local TabContainer = Instance.new("Frame")
	local UIName = Instance.new("TextLabel")
	local LogoUI = Instance.new("ImageLabel")
	local UIUnderName = Instance.new("TextLabel")

	FeatherUI.Name = "FeatherUI"
	FeatherUI.Parent = game.CoreGui
	FeatherUI.ZIndexBehavior = Enum.ZIndexBehavior.Global
	
	game:GetService("UserInputService").InputEnded:Connect(function(k)
		if k.KeyCode == Enum.KeyCode.Insert then
			FeatherUI.Enabled = not FeatherUI.Enabled
		end
	end)

	if getgenv().uilib then
		getgenv().uilib:Remove()
	end
	getgenv().uilib = FeatherUI

	UIbackround.Name = "UIbackround"
	UIbackround.Parent = FeatherUI
	UIbackround.BackgroundColor3 = Color3.fromRGB(0, 1, 15)
	UIbackround.BorderColor3 = Color3.fromRGB(0, 2, 30)
	UIbackround.BorderSizePixel = 2
	UIbackround.Position = UDim2.new(0.5, -267, 0.5, -177)
	UIbackround.Size = UDim2.new(0, 535, 0, 355)
	UIbackround.Active = true
	UIbackround.Draggable = true

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = UIbackround
	TabHolder.BackgroundColor3 = Color3.fromRGB(0, 2, 30)
	TabHolder.BorderColor3 = Color3.fromRGB(0, 3, 45)
	TabHolder.BorderSizePixel = 0
	TabHolder.Position = UDim2.new(0.00600000005, 0, 0.119999997, 0)
	TabHolder.Size = UDim2.new(0, 123, 0, 308)

	UIListLayout.Parent = TabHolder
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 2)

	UIName.Name = "UIName"
	UIName.Parent = UIbackround
	UIName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UIName.BackgroundTransparency = 1.000
	UIName.Position = UDim2.new(0.0869999975, 0, 0.0250000004, 0)
	UIName.Size = UDim2.new(0, 89, 0, 11)
	UIName.Font = Enum.Font.GothamBold
	UIName.Text = text or "Feather"
	UIName.TextColor3 = Color3.fromRGB(255, 255, 255)
	UIName.TextSize = 17.000
	UIName.TextXAlignment = Enum.TextXAlignment.Left

	LogoUI.Name = "LogoUI"
	LogoUI.Parent = UIbackround
	LogoUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoUI.BackgroundTransparency = 1.000
	LogoUI.Position = UDim2.new(0.00373135856, 0, 0.0056179422, 0)
	LogoUI.Size = UDim2.new(0, 32, 0, 32)
	LogoUI.Image = "http://www.roblox.com/asset/?id=9808083059"

	UIUnderName.Name = "UIUnderName"
	UIUnderName.Parent = UIbackround
	UIUnderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UIUnderName.BackgroundTransparency = 1.000
	UIUnderName.Position = UDim2.new(0.0869999975, 0, 0.0649999976, 0)
	UIUnderName.Size = UDim2.new(0, 78, 0, 9)
	UIUnderName.Font = Enum.Font.RobotoMono
	UIUnderName.Text = undertext or "Play the game how it should be played"
	UIUnderName.TextColor3 = Color3.fromRGB(135, 135, 135)
	UIUnderName.TextSize = 11.000
	UIUnderName.TextXAlignment = Enum.TextXAlignment.Left

	TabContainer.Name = "TabContainer"
	TabContainer.Parent = UIbackround
	TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabContainer.BackgroundTransparency = 1.000
	TabContainer.Position = UDim2.new(0.243000001, 0, 0.119000003, 0)
	TabContainer.Size = UDim2.new(0, 400, 0, 308)

	local Tabb = {}

	function Tabb:AddTab(text)
		local Tab = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local UICorner_2 = Instance.new("UICorner")
		local Tabs = Instance.new("Frame")
		local Right = Instance.new("Frame")
		local RightLayout = Instance.new("UIListLayout")
		local RightPadding = Instance.new("UIPadding")
		local Left = Instance.new("Frame")
		local LeftLayout = Instance.new("UIListLayout")
		local LeftPadding = Instance.new("UIPadding")

		Tab.Name = "Tab"
		Tab.Parent = TabHolder
		Tab.BackgroundColor3 = Color3.fromRGB(14, 26, 55)
		Tab.BorderSizePixel = 0
		Tab.Size = UDim2.new(0, 123, 0, 30)
		Tab.Font = Enum.Font.RobotoMono
		Tab.Text = text or "Tab"
		Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
		Tab.TextSize = 13.000
		Tab.TextStrokeTransparency = 0.500

		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = Tab

		UICorner_2.CornerRadius = UDim.new(0, 4)
		UICorner_2.Parent = UIbackround

		Tabs.Name = "Tabs"
		Tabs.Parent = TabContainer
		Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tabs.BackgroundTransparency = 1.000
		Tabs.Size = UDim2.new(0, 400, 0, 308)
		Tabs.Visible = false

		Right.Name = "Right"
		Right.Parent = Tabs
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.Position = UDim2.new(0.50999999, 0, 0, 0)
		Right.Size = UDim2.new(0, 190, 0, 308)

		RightLayout.Name = "RightLayout"
		RightLayout.Parent = Right
		RightLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		RightLayout.SortOrder = Enum.SortOrder.LayoutOrder
		RightLayout.Padding = UDim.new(0, 10)

		RightPadding.Name = "RightPadding"
		RightPadding.Parent = Right
		RightPadding.PaddingTop = UDim.new(0, 2)

		Left.Name = "Left"
		Left.Parent = Tabs
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.Position = UDim2.new(0.0125000002, 0, 0, 0)
		Left.Size = UDim2.new(0, 190, 0, 308)

		LeftLayout.Name = "LeftLayout"
		LeftLayout.Parent = Left
		LeftLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		LeftLayout.SortOrder = Enum.SortOrder.LayoutOrder
		LeftLayout.Padding = UDim.new(0, 10)

		LeftPadding.Name = "LeftPadding"
		LeftPadding.Parent = Left
		LeftPadding.PaddingTop = UDim.new(0, 2)

		Tab.MouseButton1Click:Connect(function()
			for i,v in pairs(TabHolder:GetChildren()) do
				if v.ClassName == "TextButton" then
					v.TextColor3 = Color3.fromRGB(165, 165, 165)
				end
			end

			for i,v in pairs(TabContainer:GetChildren()) do 
				if v.Name == "Tabs" then
					v.Visible = false
				end
			end


			Tabs.Visible = true
			Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
		end)

		local sectionss = {}

		function sectionss:CreateSection(text,side)
			if side == "Left" then side = Left else side = Right end
			local section = Instance.new("Frame")
			local TopSection = Instance.new("Frame")
			local UIGradient_5 = Instance.new("UIGradient")
			local SectionName = Instance.new("TextLabel")
			local Sectioninner = Instance.new("Frame")
			local sectioncontainer = Instance.new("Frame")
			local UIListLayout_6 = Instance.new("UIListLayout")
			local UIListLayout_69 = Instance.new("UIListLayout")

			section.Name = "section"
			section.Parent = side
			section.BackgroundColor3 = Color3.fromRGB(0, 2, 30)
			section.BorderSizePixel = 0
			section.Position = UDim2.new(0, 0, 0, 0)
			section.Size = UDim2.new(0, 190, 0, 20)

			TopSection.Name = "aTopSection"
			TopSection.Parent = section
			TopSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TopSection.BorderSizePixel = 0
			TopSection.Size = UDim2.new(0, 190, 0, 2)

			UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 2, 30)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 7, 111)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 2, 30))}
			UIGradient_5.Parent = TopSection

			SectionName.Name = "bSectionName"
			SectionName.Parent = section
			SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionName.BackgroundTransparency = 1.000
			SectionName.Position = UDim2.new(0, 0, 0, 0)
			SectionName.Size = UDim2.new(0, 190, 0, 15)
			SectionName.Font = Enum.Font.SourceSans
			SectionName.Text = text or 'Section'
			SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionName.TextSize = 15.000
			SectionName.TextStrokeTransparency = 0.500

			Sectioninner.Name = "dSectioninner"
			Sectioninner.Parent = section
			Sectioninner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sectioninner.BackgroundTransparency = 1
			Sectioninner.Position = UDim2.new(0, 0, 0, 8)
			Sectioninner.Size = UDim2.new(0, 190, 0, 0)

			sectioncontainer.Name = "csectioncontainer"
			sectioncontainer.Parent = Sectioninner
			sectioncontainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			sectioncontainer.BackgroundTransparency = 1
			sectioncontainer.Position = UDim2.new(0,7,0,2)
			sectioncontainer.Size = UDim2.new(0, 176,0, 15)

			UIListLayout_6.Parent = sectioncontainer
			UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_6.Padding = UDim.new(0, 5)

			UIListLayout_69.Parent = section
			UIListLayout_69.SortOrder = Enum.SortOrder.Name
			UIListLayout_69.Padding = UDim.new(0, 0)

			local func = {}

			local function _add(int)
				return (int+14)
			end -- read this danix, so u can learn lolol
			-- add 14 to any original value because there is a 14 pixel difference
			-- and we need that 14 diff its just easier for other things
			function func:AddButton(text,callback)
				section.Size = section.Size + UDim2.new(0,0,0,25)
				Sectioninner.Size = Sectioninner.Size + UDim2.new(0,0,0,_add(25))
				-- do the size u want and then for section inner do _add(the size)
				callback = callback or function() end

				local Button = Instance.new('TextButton')
				local ButtonCorner = Instance.new('UICorner')

				Button.Name = "Button"
				Button.Parent = sectioncontainer
				Button.BackgroundColor3 = Color3.fromRGB(14, 26, 55)
				Button.BorderColor3 = Color3.fromRGB(23, 43, 90)
				Button.BorderSizePixel = 0
				Button.Position = UDim2.new(0, 0, 0, 0)
				Button.Size = UDim2.new(0, 176, 0, 20)
				Button.Font = Enum.Font.SourceSans
				Button.Text = text
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextSize = 15.000
				Button.TextStrokeTransparency = 0.500
				Button.ZIndex = 500

				ButtonCorner.CornerRadius = UDim.new(0, 4)
				ButtonCorner.Name = "ButtonCorner"
				ButtonCorner.Parent = Button

				Button.MouseButton1Click:connect(function()
					pcall(callback)
				end)
			end

			function func:AddToggle(text,default,callback)
				section.Size = section.Size + UDim2.new(0,0,0,19)
				Sectioninner.Size = Sectioninner.Size + UDim2.new(0,0,0,_add(25))

				callback = callback or function() end

				local toggled = default

				local Toggle = Instance.new("Frame")
				local ToggleText = Instance.new("TextLabel")
				local ToggleButton = Instance.new("TextButton")

				Toggle.Name = "Toggle"
				Toggle.Parent = sectioncontainer
				Toggle.BackgroundColor3 = Color3.fromRGB(14, 26, 55)
				Toggle.BorderSizePixel = 0
				Toggle.Position = UDim2.new(0, 0, 0.181159422, 0)
				Toggle.Size = UDim2.new(0, 14, 0, 14)
				Toggle.ZIndex = 501

				ToggleText.Name = "ToggleText"
				ToggleText.Parent = Toggle
				ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.BackgroundTransparency = 1.000
				ToggleText.Position = UDim2.new(1.71428573, 0, 0, 0)
				ToggleText.Size = UDim2.new(0, 152, 0, 13)
				ToggleText.Font = Enum.Font.SourceSans
				ToggleText.Text = text or "Toggle"
				ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.TextSize = 14.000
				ToggleText.TextStrokeTransparency = 0.500
				ToggleText.TextXAlignment = Enum.TextXAlignment.Left
				ToggleText.ZIndex = 501

				ToggleButton.Name = "ToggleButton"
				ToggleButton.Parent = Toggle
				ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleButton.BackgroundTransparency = 1.000
				ToggleButton.Size = UDim2.new(0, 176, 0, 13)
				ToggleButton.Font = Enum.Font.SourceSans
				ToggleButton.Text = ""
				ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton.TextSize = 14.000
				ToggleButton.ZIndex = 502

				local function ChangeState(state)
					toggled = state
					Toggle.BackgroundColor3 = toggled and Color3.fromRGB(42, 79, 165) or Color3.fromRGB(14, 26, 55)
					callback(toggled)
				end

				ChangeState(default)

				ToggleButton.MouseButton1Click:Connect(function()
					ChangeState(not toggled)
				end)
			end

			function func:AddSlider(args)
				section.Size = section.Size + UDim2.new(0,0,0,20)
				Sectioninner.Size = Sectioninner.Size + UDim2.new(0,0,0,_add(25))

				args['text'] = args['text'] or "Slider"
				args['unit'] = args['unit'] or "%"
				args['default'] = args['default'] or 0
				args['min'] = args['min'] or 0
				args['max'] = args['max'] or 100
				args['callback'] = args['callback'] or function() end

				local Slider = Instance.new("Frame")
				local Slidernumberval = Instance.new("TextLabel")
				local SliderText = Instance.new("TextLabel")
				local Sliderbutton = Instance.new("TextButton")
				local Draggablepart = Instance.new("Frame")

				Slider.Name = "Slider"
				Slider.Parent = sectioncontainer
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 1.000
				Slider.Position = UDim2.new(0, 0, 0.579710126, 0)
				Slider.Size = UDim2.new(0, 100, 0, 18)
				Slider.ZIndex = 503

				Slidernumberval.Name = "Slidernumberval"
				Slidernumberval.Parent = Slider
				Slidernumberval.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slidernumberval.BackgroundTransparency = 1.000
				Slidernumberval.Position = UDim2.new(1.25, 0, -0.100000001, 0)
				Slidernumberval.Size = UDim2.new(0, 50, 0, 13)
				Slidernumberval.Font = Enum.Font.SourceSans
				Slidernumberval.Text = tostring(args['default'])..args['unit']
				Slidernumberval.TextColor3 = Color3.fromRGB(255, 255, 255)
				Slidernumberval.TextSize = 14.000
				Slidernumberval.TextStrokeTransparency = 0.500
				Slidernumberval.TextXAlignment = Enum.TextXAlignment.Right
				Slidernumberval.ZIndex = 504

				SliderText.Name = "SliderText"
				SliderText.Parent = Slider
				SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderText.BackgroundTransparency = 1.000
				SliderText.Position = UDim2.new(0, 0, -0.100000001, 0)
				SliderText.Size = UDim2.new(0, 176, 0, 11)
				SliderText.Font = Enum.Font.SourceSans
				SliderText.Text = args['text']
				SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderText.TextSize = 14.000
				SliderText.TextStrokeTransparency = 0.500
				SliderText.TextXAlignment = Enum.TextXAlignment.Left
				SliderText.ZIndex = 504

				Sliderbutton.Name = "Sliderbutton"
				Sliderbutton.Parent = Slider
				Sliderbutton.BackgroundColor3 = Color3.fromRGB(0, 1, 15)
				Sliderbutton.BorderSizePixel = 0
				Sliderbutton.Position = UDim2.new(-0.00999999978, 0, 0.590263367, 0)
				Sliderbutton.Size = UDim2.new(0, 176, 0, 6)
				Sliderbutton.Font = Enum.Font.SourceSans
				Sliderbutton.Text = ""
				Sliderbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
				Sliderbutton.TextSize = 14.000
				Sliderbutton.ZIndex = 504

				Draggablepart.Name = "Draggablepart"
				Draggablepart.Parent = Sliderbutton
				Draggablepart.BackgroundColor3 = Color3.fromRGB(14, 26, 55)
				Draggablepart.BorderSizePixel = 0
				Draggablepart.Size = UDim2.new(0,args['default'], 0, 6)
				Draggablepart.ZIndex = 505

				local dragging = false
				local Value;
				local m = game.Players.LocalPlayer:GetMouse()
				local y = false

				local function updateValue(value)
					if value ~= 0 then
						Draggablepart:TweenSize(UDim2.new(value/args.max,0,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01)
					else
						Draggablepart:TweenSize(UDim2.new(0,1,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01)
					end
					Slidernumberval.Text = value..args['unit']
					args['callback'](value)
				end

				local function updateDr()
					while game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do game:GetService("RunService").RenderStepped:Wait()
						local val = args.min + ((m.X - Sliderbutton.AbsolutePosition.X) / Sliderbutton.AbsoluteSize.X) * (args.max - args.min)
						if val < 0 then val = 0 end
						if val > args.max then val = args.max end
						updateValue(math.floor(val))
					end
				end

				Sliderbutton.MouseEnter:Connect(function()
					y = true
					while y do wait()
						updateDr()	
					end
				end)

				Sliderbutton.MouseLeave:Connect(function()
					y = false
				end)

				updateValue(args['default'])
			end

			function func:AddDropdown(text,multi,list,callback)
				section.Size = section.Size + UDim2.new(0,0,0,37)
				Sectioninner.Size = Sectioninner.Size + UDim2.new(0,0,0,_add(25))

				local multiselect = {}

				list = list or {}
				text = text or "{@} Dropdown"
				callback = callback or function() end
				multi = multi or false

				local Dropdown = Instance.new("Frame")
				local Dropframe = Instance.new("ScrollingFrame")
				local TextButton_6 = Instance.new("TextButton")
				local Droptext = Instance.new("TextLabel")
				local Dropbutton = Instance.new("TextButton")
				local Dropsymbol = Instance.new("TextLabel")
				local DropdownCorner = Instance.new("UICorner")

				Dropdown.Name = "Dropdown"
				Dropdown.Parent = sectioncontainer
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.Position = UDim2.new(0, 0, 0.760869563, 0)
				Dropdown.Size = UDim2.new(0, 100, 0, 31)

				Dropframe.Name = "Dropframe"
                Dropframe.Parent = Dropdown
                Dropframe.Active = true
                Dropframe.BackgroundColor3 = Color3.fromRGB(14, 26, 55)
                Dropframe.Position = UDim2.new(0, 0, 1, 0)
                Dropframe.Size = UDim2.new(0, 175, 0, 100)
                Dropframe.ZIndex = 506
                Dropframe.CanvasPosition = Vector2.new(0, 100)
                Dropframe.ScrollBarThickness = 3
                Dropframe.Visible = false
                Dropframe.ScrollingEnabled = true
                Dropframe.AutomaticCanvasSize = "Y"

				Droptext.Name = "Droptext"
				Droptext.Parent = Dropdown
				Droptext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Droptext.BackgroundTransparency = 1.000
				Droptext.Size = UDim2.new(0, 176, 0, 9)
				Droptext.Font = Enum.Font.SourceSans
				Droptext.Text = text
				Droptext.TextColor3 = Color3.fromRGB(255, 255, 255)
				Droptext.TextSize = 14.000
				Droptext.TextStrokeTransparency = 0.500
				Droptext.TextXAlignment = Enum.TextXAlignment.Left

				Dropbutton.Name = "Dropbutton"
				Dropbutton.Parent = Dropdown
				Dropbutton.BackgroundColor3 = Color3.fromRGB(14, 26, 55)
				Dropbutton.Position = UDim2.new(0, 0, 0.341935515, 0)
				Dropbutton.Size = UDim2.new(0, 176, 0, 20)
				Dropbutton.Font = Enum.Font.SourceSans
				Dropbutton.Text = "  Unknown"
				Dropbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
				Dropbutton.TextSize = 15.000
				Dropbutton.TextStrokeTransparency = 0.500
				Dropbutton.TextXAlignment = Enum.TextXAlignment.Left
				Dropbutton.MouseButton1Click:Connect(function() 
					Dropframe.Visible = not Dropframe.Visible; Dropsymbol.Text = Dropframe.Visible and "+" or "-"
					Dropsymbol.Size = Dropframe.Visible and UDim2.new(0, 20 , 0, 20) or UDim2.new(0,20,0,20)
				end)

				Dropsymbol.Name = "Dropsymbol"
				Dropsymbol.Parent = Dropbutton
				Dropsymbol.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropsymbol.BackgroundTransparency = 1.000
				Dropsymbol.Position = UDim2.new(0.886363626, 0, 0, 0)
				Dropsymbol.Size = UDim2.new(0, 20, 0, 20)
				Dropsymbol.Font = Enum.Font.SourceSans
				Dropsymbol.Text = "-"
				Dropsymbol.TextColor3 = Color3.fromRGB(255, 255, 255)
				Dropsymbol.TextSize = 15.000
				Dropsymbol.TextStrokeTransparency = 0.500

				DropdownCorner.CornerRadius = UDim.new(0, 4)
				DropdownCorner.Name = "DropdownCorner"
				DropdownCorner.Parent = Dropbutton

				local DropframeList = Instance.new("UIListLayout")
				DropframeList.Parent = Dropframe
				DropframeList.FillDirection = "Vertical"

				local function findIndex(element)
					local index={}
					for k,v in pairs(multiselect) do
						index[v]=k
					end
					return index[element]
				end

				local function newItem(i)
					
					local TextButton = Instance.new("TextButton")
					TextButton.Parent = Dropframe
					TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextButton.BackgroundTransparency = 12.000
					TextButton.Position = UDim2.new(0.0331491716, 0, 0, 0)
					TextButton.Size = UDim2.new(0, 199, 0, 25)
					TextButton.Font = Enum.Font.RobotoMono
					TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextButton.TextSize = 14.000
					TextButton.TextStrokeTransparency = 0.000
					TextButton.Text = " "..i
					TextButton.TextXAlignment = Enum.TextXAlignment.Left
					TextButton.AutoButtonColor = false
					TextButton.ZIndex = 509
					TextButton.ClipsDescendants = true
					local currentvaluecock = "None"
					TextButton.MouseButton1Click:Connect(function()

						if not multi then
							for i,v in pairs(Dropframe:GetChildren()) do
								if v.ClassName == "TextButton" then
									v.TextColor3 = Color3.fromRGB(255,255,255)
								end
							end

							TextButton.TextColor3 = Color3.fromRGB(71, 98, 173)
							Dropbutton.Text = " "..i
							currentvaluecock = i
							callback(i)
							Value = i
						else
							if not table.find(multiselect,i) then
								table.insert(multiselect,i)
								TextButton.TextColor3 = Color3.fromRGB(71, 98, 173)
								Dropbutton.Text = "  ..."
								callback(multiselect)
								Value = multiselect
							else
								table.remove(multiselect,findIndex(i))
								Dropbutton.Text = "  ..."
								TextButton.TextColor3 = Color3.fromRGB(255,255,255)
								callback(multiselect)
								Value = multiselect
							end
						end
					end)
				end




				for i,v in pairs(list) do newItem(v) end
				Set = function(tbl)
					Dropbutton.Text = " "..tbl.Value
					Value = tbl.Value
				end

			end
			
			function func:AddKeybind(text,defaulttoggle,keycode,callback)
				
				callback = callback or function() end
				section.Size = section.Size + UDim2.new(0,0,0,19)
				Sectioninner.Size = Sectioninner.Size + UDim2.new(0,0,0,_add(25))
				
				local IsBinding = false
				local CurrentBind = keycode
				local toggled = false
				
				local Keybind = Instance.new("Frame")
				local ToggleText_2 = Instance.new("TextLabel")
				local ToggleButton_2 = Instance.new("TextButton")
				local Keybind_2 = Instance.new("TextButton")
				
				Keybind.Name = "Keybind"
				Keybind.Parent = sectioncontainer
				Keybind.BackgroundColor3 = Color3.fromRGB(14, 27, 55)
				Keybind.BorderSizePixel = 0
				Keybind.Position = UDim2.new(0, 0, 0.181159422, 0)
				Keybind.Size = UDim2.new(0, 14, 0, 14)

				ToggleText_2.Name = "ToggleText"
				ToggleText_2.Parent = Keybind
				ToggleText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText_2.BackgroundTransparency = 1.000
				ToggleText_2.Position = UDim2.new(1.71428573, 0, 0, 0)
				ToggleText_2.Size = UDim2.new(0, 152, 0, 13)
				ToggleText_2.Font = Enum.Font.SourceSans
				ToggleText_2.Text = text
				ToggleText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText_2.TextSize = 14.000
				ToggleText_2.TextStrokeTransparency = 0.500
				ToggleText_2.TextXAlignment = Enum.TextXAlignment.Left

				ToggleButton_2.Name = "ToggleButton"
				ToggleButton_2.Parent = Keybind
				ToggleButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleButton_2.BackgroundTransparency = 1.000
				ToggleButton_2.Size = UDim2.new(0, 134, 0, 13)
				ToggleButton_2.Font = Enum.Font.SourceSans
				ToggleButton_2.Text = ""
				ToggleButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton_2.TextSize = 14.000

				Keybind_2.Name = "Keybind"
				Keybind_2.Parent = Keybind
				Keybind_2.BackgroundColor3 = Color3.fromRGB(14, 26, 55)
				Keybind_2.BorderColor3 = Color3.fromRGB(25, 25, 25)
				Keybind_2.Position = UDim2.new(10, 0, 0, 0)
				Keybind_2.Size = UDim2.new(0, 36, 0, 14)
				Keybind_2.Font = Enum.Font.SourceSans
				Keybind_2.Text = UserInputService:GetStringForKeyCode(CurrentBind)
				Keybind_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				Keybind_2.TextSize = 15.000
				Keybind_2.TextStrokeTransparency = 0.500
				Keybind_2.TextWrapped = true
				Keybind_2.TextYAlignment = Enum.TextYAlignment.Bottom
				
				
				local function ChangeState(state,bind)
					toggled = state
					Keybind.BackgroundColor3 = toggled and Color3.fromRGB(42, 79, 165) or Color3.fromRGB(14, 26, 55)
				end

				ChangeState(defaulttoggle)
				
				ToggleButton_2.MouseButton1Click:Connect(function()
					ChangeState(not toggled)
				end)
				
				
				UserInputService.InputBegan:connect(function(input)
					if input.UserInputType == Enum.UserInputType.Keyboard then
						if IsBinding then
							CurrentBind = input.KeyCode
							Keybind_2.Text = UserInputService:GetStringForKeyCode(CurrentBind)
							IsBinding = false
						end
						if CurrentBind == input.KeyCode then
							ChangeState(not toggled)
							callback(toggled)
						end
					end
				end)

				Keybind_2.MouseButton1Click:Connect(function()
					IsBinding = true
					Keybind_2.Text = "[ . . . ]"
				end)
				
				
			end

			return func
		end
		return sectionss
	end
	return Tabb
end

if game.PlaceId == 6284583030 then

--TESTING!!!!!!!!!!!!!!!!!!!!!!!!!!!
local start = tick()
repeat wait() until game:IsLoaded()
--UI thingy
local window = library:CreateWindow('DanixHub',tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name).." | "..'Insert to hide menu')
local autofarmtab = window:AddTab('AutoFarm')
local misctab = window:AddTab('Misc')
local eggtab = window:AddTab('Eggs')
local eggsection1 = eggtab:CreateSection('Eggs', 'Left')
local miscsection1 = misctab:CreateSection('Gamepasses', 'Left')
local miscsection2 = misctab:CreateSection('UI', 'Right')
local autofarmsection1 = autofarmtab:CreateSection('Main','Left')
local autofarmsection2 = autofarmtab:CreateSection('Area autofarm','Right')

--AUTOFARMTAB1
autofarmsection1:AddToggle('Farm closest coins',false,function(y)
	AutoFarm = y
end)

autofarmsection1:AddToggle('Auto colect orbs', true,function(y)
    Colect = y
end)

autofarmsection1:AddToggle('Auto colect lootbags', true,function(y)
    colectlootbags = y
end)

autofarmsection1:AddToggle('Auto colect gifts', false,function(y)
    colectgifts = y
end)
--AUTOFARMTAB2
autofarmsection2:AddToggle('AreaFarm', false,function(y)
    AreaFarm = y
end)

local Areas = {}

for i,v in pairs(game:GetService("ReplicatedStorage").Game.Coins:GetDescendants()) do
    if v.ClassName == 'Folder' then
        table.insert(Areas, v.Name)
    end
end

autofarmsection2:AddDropdown('Select area',false,Areas,function(y)
    SelectArea = y
end)

--MISCTAB1
miscsection1:AddButton('Give some gamepasses', function()
    local main = debug.getupvalues(require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library")).Save.Get)[2][game.Players.LocalPlayer].save.Gamepasses
        table.insert(main, 21641016)
        table.insert(main, 18674298)
        table.insert(main, 18674305)
        table.insert(main, 21583760)
        table.insert(main, 26398305)
        table.insert(main, 22596039)
end)
--MISCTAB2
miscsection2:AddButton('Golden',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'Golden' then
            v.Enabled = true
        end
    end
end)

miscsection2:AddButton('Bank',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'Bank' then
            v.Enabled = true
        end
    end
end)

miscsection2:AddButton('Dark matter',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'DarkMatter' then
            v.Enabled = true
        end
    end
end)

miscsection2:AddButton('Rainbow',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'Rainbow' then
            v.Enabled = true
        end
    end
end)

miscsection2:AddButton('Fuse pets',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'FusePets' then
            v.Enabled = true
        end
    end
end)

miscsection2:AddButton('Trading',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'Trading' then
            v.Enabled = true
        end
    end
end)

miscsection2:AddButton('Upgrades',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'Upgrades' then
            v.Enabled = true
        end
    end
end)

miscsection2:AddButton('Enchants',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'EnchantPets' then
            v.Enabled = true
        end
    end
end)

miscsection2:AddButton('Merchant',function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'Merchant' then
            v.Enabled = true
        end
    end
end)
--EGGTAB1
eggsection1:AddToggle('Open eggs', false, function (y)
    OpenEggs = y
end)

local Eggs = {}

for i,v in pairs(game:GetService("ReplicatedStorage").Game.Eggs:GetDescendants()) do
    if v.ClassName == 'Folder' then
        table.insert(Eggs, v.Name)
    end
end

eggsection1:AddDropdown('Select egg', false, Eggs,function (y)
    if y then
        getgenv().egg = y
    end
end)

--EGGTAB1CODE
spawn(function ()
    while task.wait() do
        if OpenEggs then
            pcall(function()
                    local args = {
                        [1] = {
                            [1] = tostring(getgenv().egg),
                            [2] = false
                        }
                    }
        
                    workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                    wait(0.2)
            end)
        end
    end
end)
--MISCTAB2CODE
--MISCTAB1CODE
--AUTOFARM2CODE
spawn(function()
    while task.wait() do
        if AreaFarm then
            pcall(function()
                function FarmCoin(CoinID, PetID)
                    workspace.__THINGS.__REMOTES["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
                    workspace.__THINGS.__REMOTES["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
                end

                function GetPet()
                    local Returneble = {}
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
                        if v.ClassName == "TextButton" and v.Equipped.Visible then
                            table.insert(Returneble, v.Name)
                        end
                    end
                    return Returneble
                end
                
                function GetCoins(area)
                    local Returneble = {}
                    local ListCoins = workspace.__THINGS.__REMOTES['get coins']:InvokeServer({})[1]
                        for i,v in pairs(ListCoins) do
                            if v.a == SelectArea then
                                local Coin = v
                                Coin['index'] = i
                                table.insert(Returneble, Coin)
                            end
                        end
                    return Returneble
                end
                local CoinYes = GetCoins(SelectArea)
                local PetYes = GetPet()
                for i = 1, #CoinYes do
                    FarmCoin(CoinYes[i].index, PetYes[i%#PetYes+1])
                end
            end)
        end
    end
end)
--AUTOFARM1CODE
spawn(function()
    while task.wait() do
        if AutoFarm then
            pcall(function()
                coroutine.wrap(function()
                function FarmCoin(CoinID, PetID)
                    workspace.__THINGS.__REMOTES["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
                    workspace.__THINGS.__REMOTES["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
                end

                function GetPet()
                    local Returneble = {}
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
                        if v.ClassName == "TextButton" and v.Equipped.Visible then
                            table.insert(Returneble, v.Name)
                        end
                    end
                    return Returneble
                end
                local NearestCoin = math.huge
                local nearest;
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
                    if (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < NearestCoin then
                    nearest = v
                    NearestCoin = (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    end
                end
                local MyPets = GetPet()

                for i,v in pairs(MyPets) do
                    FarmCoin(nearest.Name, v)
                end
            end)() 
            end)
        end
    end
end)


spawn(function()
    while task.wait() do
        if Colect then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Orbs:GetChildren()) do
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end)
        end
    end
end)


spawn(function()
    while task.wait() do
        if colectlootbags then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end)
        end
        task.wait(.5)
    end
end)

spawn(function()
    while task.wait() do
        if colectgifts then
            pcall(function()
                
                for i = 1, 12, 1 do
                  local args = {
                      [1] = {
                          [1] = i
                      }
                  }

                    workspace.__THINGS.__REMOTES:FindFirstChild("redeem free gift"):InvokeServer(unpack(args))
                end
                
            end)
        end
    end
end)

--END
local stop = tick()-start
print('loaded in : '..stop..'sec')
else
return end
