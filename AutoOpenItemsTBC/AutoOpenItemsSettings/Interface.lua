SLASH_RELOADUI1 = "/rl" --Reload ui with this Command
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs" --Fast access to Frames
SlashCmdList.FRAMESTK = function()
	LoadAddOn('Blizzard_DebugTools')
	FrameStackTooltip_Toggle()
end

for i = 1, NUM_CHAT_WINDOWS do 
	_G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false)
end

SLASH_SHOWUI1 = "/autoopen"
SlashCmdList.SHOWUI = function()

end
---------------------------------------------------------------------------------
---------------------------ADDON-------------------------------------------------
---------------------------------------------------------------------------------

	--Frame
	--local UIConfig = CreateFrame("Frame", "AutoOpenItemsSettings", UIParent, "BasicFrameTemplateWithInset")
	--UIConfig:SetSize(300,300)
	--UIConfig:SetPoint("CENTER", UIParent, "CENTER")
	--Title
	--UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY")
	--UIConfig.title:SetFontObject("GameFontHighlight")
	--UIConfig.title:SetPoint("CENTER", UIConfig.TitleBg, "CENTER", 5, 0)
	--UIConfig.title:SetText("Auto Open Items Settings")
	--Buttons
	--UIConfig.showbutton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate")
	--UIConfig.showbutton:SetPoint("RIGHT", UIConfig, "TOP", 0, -70)
	--UIConfig.showbutton:SetSize(60,26)
	--UIConfig.showbutton:SetText("Test")
	--UIConfig.showbutton:SetNormalFontObject("GameFontNormalLarge")
	--UIConfig.showbutton:SetHighlightFontObject("GameFontHighlightLarge")
	--slider
	--UIConfig.slider1 = CreateFrame("Slider", nil, UIConfig.loadBtn, "OptionsSliderTemplate")
	--UIConfig.slider1:SetPoint("LEFT", UIConfig, "BOTTOM", 0, -20)
	--UIConfig.slider1:SetMinMaxValues(1,100)
	--UIConfig.slider1:SetValue(55)
	--UIConfig.slider1:SetValueStep(30)
	--UIConfig.slider1:SetObeyStepOnDrag(true)
	--UIConfig.slider1:SetOrientation("VERTICAL") //Very Buggy does not work properly