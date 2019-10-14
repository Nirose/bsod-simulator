#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

GetImageSize(ImageFullPath)
{
  static
  gui,99:add, picture, vimage, %ImageFullPath%
  GuiControlGet, image, 99:Pos
  gui,99:destroy
  return imagew "x" imageh
}

GetImageRatio(ImageFullPath)
{
  static
  gui,99:add, picture, vimage, %ImageFullPath%
  GuiControlGet, image, 99:Pos
  gui,99:destroy
  return (imagew < imageh)
}
LWin & k::
	Gui, destroy
	Gui, +AlwaysOnTop +LastFound +Owner -Caption
	Gui, Color, Black
	Gui, Add, Picture,  x0 y0 w%A_ScreenWidth% h-1 vPic, bsod.png	
	Gui, Show, x1920 y0 maximize
	return
Escape::
	Gui, destroy