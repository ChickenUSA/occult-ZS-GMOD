function MakepOptions()
	PlayMenuOpenSound()

	if pOptions then
		pOptions:SetAlpha(0)
		pOptions:AlphaTo(255, 0.15, 0)
		pOptions:SetVisible(true)
		pOptions:MakePopup()
		return
	end

	local Window = vgui.Create("DFrame")
	local wide = math.min(ScrW(), 500)
	local tall = math.min(ScrH(), 800)
	Window:SetSize(wide, tall)
	Window:Center()
	Window:SetTitle(" ")
	Window:SetDeleteOnClose(false)
	pOptions = Window

	local y = 8

	local label = EasyLabel(Window, "Options", "ZSScoreBoardTitle", color_white)
	label:SetPos(wide * 0.5 - label:GetWide() * 0.5, y)
	y = y + label:GetTall() + 8

	local list = vgui.Create("DPanelList", pOptions)
	list:EnableVerticalScrollbar()
	list:EnableHorizontal(false)
	list:SetSize(wide - 24, tall - y - 12)
	list:SetPos(12, y)
	list:SetPadding(8)
	list:SetSpacing(4)

	gamemode.Call("AddExtraOptions", list, Window)

	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Always display nail health")
	check:SetConVar("zs_alwaysshownails")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Always third person knockdown camera")
	check:SetConVar("zs_thirdpersonknockdown")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Always volunteer to start as a zombie")
	check:SetConVar("zs_alwaysvolunteer")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Always quick buy from arsenal and remantler")
	check:SetConVar("zs_alwaysquickbuy")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Automatic suicide when changing classes")
	check:SetConVar("zs_suicideonchange")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Disable automatic redeeming (next round)")
	check:SetConVar("zs_noredeem")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Disable pressing use to deposit ammo in deployables")
	check:SetConVar("zs_nousetodeposit")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Disable use to prop pickup (only pickup items)")
	check:SetConVar("zs_nopickupprops")
	check:SizeToContents()
	list:AddItem(check)


	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Disable crosshair rotate")
	check:SetConVar("zs_nocrosshairrotate")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Disable ironsight scopes")
	check:SetConVar("zs_disablescopes")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Display experience")
	check:SetConVar("zs_drawxp")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Don't show point floaters")
	check:SetConVar("zs_nofloatingscore")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Don't hide arsenal and resupply packs")
	check:SetConVar("zs_hidepacks")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Don't hide friends via transparency")
	check:SetConVar("zs_showfriends")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Draw crosshair in ironsights.")
	check:SetConVar("zs_ironsightscrosshair")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable ambient music")
	check:SetConVar("zs_beats")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable last human music")
	check:SetConVar("zs_playmusic")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable post processing")
	check:SetConVar("zs_postprocessing")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable film grain")
	check:SetConVar("zs_filmgrain")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable Color Mod")
	check:SetConVar("zs_colormod")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable pain flashes")
	check:SetConVar("zs_drawpainflash")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable font effects")
	check:SetConVar("zs_fonteffects")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable human health auras")
	check:SetConVar("zs_auras")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable damage indicators")
	check:SetConVar("zs_damagefloaters")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable movement view roll")
	check:SetConVar("zs_movementviewroll")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Enable message beacon visibility")
	check:SetConVar("zs_messagebeaconshow")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Film Mode (disable most of the HUD)")
	check:SetConVar("zs_filmmode")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Hide view models")
	check:SetConVar("zs_hideviewmodels")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Prevent being picked as a boss zombie")
	check:SetConVar("zs_nobosspick")
	check:SizeToContents()
	list:AddItem(check)

	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText("Show damage indicators through walls")
	check:SetConVar("zs_damagefloaterswalls")
	check:SizeToContents()
	list:AddItem(check)

	list:AddItem(EasyLabel(Window, "Health target display style", "DefaultFontSmall", color_white))
	dropdown = vgui.Create("DComboBox", Window)
	dropdown:SetMouseInputEnabled(true)
	dropdown:AddChoice("% of health")
	dropdown:AddChoice("Health amount")
	dropdown.OnSelect = function(me, index, value, data)
		RunConsoleCommand("zs_healthtargetdisplay", value == "Health amount" and 1 or 0)
	end
	dropdown:SetText(GAMEMODE.HealthTargetDisplay == 1 and "Health amount" or "% of health")
	dropdown:SetTextColor(color_black)
	list:AddItem(dropdown)

	list:AddItem(EasyLabel(Window, "Prop rotation snap angle", "DefaultFontSmall", color_white))
	dropdown = vgui.Create("DComboBox", Window)
	dropdown:SetMouseInputEnabled(true)
	dropdown:AddChoice("No snap")
	dropdown:AddChoice("15 degrees")
	dropdown:AddChoice("30 degrees")
	dropdown:AddChoice("45 degrees")
	dropdown.OnSelect = function(me, index, value, data)
		RunConsoleCommand("zs_proprotationsnap", value == "15 degrees" and 15 or value == "30 degrees" and 30 or value == "45 degrees" and 45 or 0)
	end
	dropdown:SetText(GAMEMODE.PropRotationSnap == 15 and "15 degrees"
		or GAMEMODE.PropRotationSnap == 30 and "30 degrees"
		or GAMEMODE.PropRotationSnap == 45 and "45 degrees"
		or "No snap")
	dropdown:SetTextColor(color_black)
	list:AddItem(dropdown)

	list:AddItem(EasyLabel(Window, "Human ambient beat set", "DefaultFontSmall", color_white))
	dropdown = vgui.Create("DComboBox", Window)
	dropdown:SetMouseInputEnabled(true)
	for setname in pairs(GAMEMODE.Beats) do
		if setname ~= GAMEMODE.BeatSetHumanDefualt then
			dropdown:AddChoice(setname)
		end
	end
	dropdown:AddChoice("none")
	dropdown:AddChoice("default")
	dropdown.OnSelect = function(me, index, value, data)
		RunConsoleCommand("zs_beatset_human", value)
	end
	dropdown:SetText(GAMEMODE.BeatSetHuman == GAMEMODE.BeatSetHumanDefault and "default" or GAMEMODE.BeatSetHuman)
	dropdown:SetTextColor(color_black)
	list:AddItem(dropdown)

	list:AddItem(EasyLabel(Window, "Zombie ambient beat set", "DefaultFontSmall", color_white))
	dropdown = vgui.Create("DComboBox", Window)
	dropdown:SetMouseInputEnabled(true)
	for setname in pairs(GAMEMODE.Beats) do
		if setname ~= GAMEMODE.BeatSetZombieDefualt then
			dropdown:AddChoice(setname)
		end
	end
	dropdown:AddChoice("none")
	dropdown:AddChoice("default")
	dropdown.OnSelect = function(me, index, value, data)
		RunConsoleCommand("zs_beatset_zombie", value)
	end
	dropdown:SetText(GAMEMODE.BeatSetZombie == GAMEMODE.BeatSetZombieDefault and "default" or GAMEMODE.BeatSetZombie)
	dropdown:SetTextColor(color_black)
	list:AddItem(dropdown)

	local slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(0)
	slider:SetMinMax(2, 8)
	slider:SetConVar("zs_crosshairlines")
	slider:SetText("Crosshair lines")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(0)
	slider:SetMinMax(0, 90)
	slider:SetConVar("zs_crosshairoffset")
	slider:SetText("Crosshair offset")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(1)
	slider:SetMinMax(0.5, 2)
	slider:SetConVar("zs_crosshairthickness")
	slider:SetText("Crosshair thickness")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(1)
	slider:SetMinMax(0.5, 2)
	slider:SetConVar("zs_dmgnumberscale")
	slider:SetText("Damage number size")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(1)
	slider:SetMinMax(0, 1)
	slider:SetConVar("zs_dmgnumberspeed")
	slider:SetText("Damage number speed")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(1)
	slider:SetMinMax(0.2, 1.5)
	slider:SetConVar("zs_dmgnumberlife")
	slider:SetText("Damage number lifetime")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(1)
	slider:SetMinMax(0, 255)
	slider:SetConVar("zs_filmgrainopacity")
	slider:SetText("Film grain")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(1)
	slider:SetMinMax(0.7, 1.6)
	slider:SetConVar("zs_interfacesize")
	slider:SetText("Interface/HUD scale")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(2)
	slider:SetMinMax(0, 1)
	slider:SetConVar("zs_ironsightzoom")
	slider:SetText("Ironsight zoom scale")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(0)
	slider:SetMinMax(0, 100)
	slider:SetConVar("zs_beatsvolume")
	slider:SetText("Music volume")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(1)
	slider:SetMinMax(0.1, 4)
	slider:SetConVar("zs_proprotationsens")
	slider:SetText("Prop rotation sensitivity")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(0)
	slider:SetMinMax(0, GAMEMODE.TransparencyRadiusMax)
	slider:SetConVar("zs_transparencyradius")
	slider:SetText("Transparency radius")
	slider:SizeToContents()
	list:AddItem(slider)

	slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(0)
	slider:SetMinMax(0, GAMEMODE.TransparencyRadiusMax)
	slider:SetConVar("zs_transparencyradius3p")
	slider:SetText("Transparency radius in third person")
	slider:SizeToContents()
	list:AddItem(slider)

	list:AddItem(EasyLabel(Window, "Crosshair primary color"))
	local colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(true)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zs_crosshair_colr")
	colpicker:SetConVarG("zs_crosshair_colg")
	colpicker:SetConVarB("zs_crosshair_colb")
	colpicker:SetConVarA("zs_crosshair_cola")
	colpicker:SetTall(72)
	list:AddItem(colpicker)

	list:AddItem(EasyLabel(Window, "Crosshair secondary color"))
	colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(true)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zs_crosshair_colr2")
	colpicker:SetConVarG("zs_crosshair_colg2")
	colpicker:SetConVarB("zs_crosshair_colb2")
	colpicker:SetConVarA("zs_crosshair_cola2")
	colpicker:SetTall(72)
	list:AddItem(colpicker)

	list:AddItem(EasyLabel(Window, "Health aura color - Full health"))
	colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(false)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zs_auracolor_full_r")
	colpicker:SetConVarG("zs_auracolor_full_g")
	colpicker:SetConVarB("zs_auracolor_full_b")
	colpicker:SetTall(72)
	list:AddItem(colpicker)

	list:AddItem(EasyLabel(Window, "Health aura color - No health"))
	colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(false)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zs_auracolor_empty_r")
	colpicker:SetConVarG("zs_auracolor_empty_g")
	colpicker:SetConVarB("zs_auracolor_empty_b")
	colpicker:SetTall(72)
	list:AddItem(colpicker)

	Window:SetAlpha(0)
	Window:AlphaTo(255, 0.15, 0)
	Window:MakePopup()
end
