CheckPageLoaded:
pageloaded := false
while(pageloaded = false)
{
	sleep 1000
	ImageSearch, X, Y, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, slate_loaded_max.png ;This is the image at full screen
	if ErrorLevel = 0
	{
		pageloaded := true
	}
	else
	{
		ImageSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, slate_loaded_min.png ; This is the loading symbol when minimized
		if ErrorLevel = 0
		{
			pageloaded := true
		}
	}
}
Sleep 2000 ; Sleep for scripts on page to run (JS etc.)
return
