GuiHeight := A_ScreenHeight/13
GuiWidth := A_ScreenWidth/5.5
GuiY := A_ScreenHeight-(GuiHeight+40)
Gui,+AlwaysOnTop
Gui, Show, w%GuiWidth% h%GuiHeight%, Provisioning Tool
WinGetPos, winX, winY, winWidth, winHeight, Provisioning Tool
GuiX := A_ScreenWidth - winWidth
WinWait, Provisioning Tool
WinMove, %GuiX%, %GuiY%