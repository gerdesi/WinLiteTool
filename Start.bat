@echo on
setlocal EnableExtensions EnableDelayedExpansion

title Windows11 builder @Gerdesi
timeout /t 3 /nobreak > nul
cls
set /p FolderPath=Windows11 ISO Folder Path: 
set "FolderPath=%FolderPath%"
if not exist "%FolderPath%\sources\boot.wim" (
	echo.Could not find 'boot.wim'
	pause
	goto :Stop
)

if not exist "%FolderPath%\sources\install.wim" (
	echo.Could not find 'install.wim'
	pause
	goto :Stop
)

echo Get Info:
dism /Get-WimInfo /wimfile:%FolderPath%\sources\install.wim
set index=
set /p index=Features index:
set "index=%index%"
echo Load Windows Features...
md %FolderPath%\scratchdir
dism /mount-image /imagefile:%FolderPath%\sources\install.wim /index:%index% /mountdir:%FolderPath%\scratchdir
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Clipchamp.Clipchamp_3.0.10220.0_neutral_~_yxz26nhyzhsrt 
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingNews_4.1.24002.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingSearch_2022.0.79.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingWeather_4.53.52892.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.GamingApp_2024.311.2341.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.GetHelp_10.2302.10601.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftOfficeHub_18.2308.1034.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftSolitaireCollection_4.19.3190.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftStickyNotes_4.6.2.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.OutlookForWindows_1.0.0.0_neutral__8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Paint_11.2302.20.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.PowerAutomateDesktop_11.2401.28.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ScreenSketch_2022.2307.52.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Todos_2.104.62421.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Windows.DevHome_0.100.128.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsAlarms_2022.2312.2.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsCalculator_2021.2311.0.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsCamera_2022.2312.3.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsFeedbackHub_2024.125.1522.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsNotepad_11.2312.18.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsSoundRecorder_2021.2312.5.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Xbox.TCUI_1.23.28005.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxGamingOverlay_2.624.1111.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxSpeechToTextOverlay_1.97.17002.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.YourPhone_1.24012.105.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneMusic_11.2312.8.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:MicrosoftCorporationII.QuickAssist_2024.309.159.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:MicrosoftWindows.Client.WebExperience_424.1301.270.9_neutral_~_cw5n1h2txyewy
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:MicrosoftWindows.CrossDevice_1.23101.22.0_neutral_~_cw5n1h2txyewy
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:MSTeams_1.0.0.0_x64__8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:microsoft.Copilot_0.4.2.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:microsoft.WidgetsPlatformRuntime_1.4.0.0_x64__8wekyb3d8bbwe
rem Media
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.AV1VideoExtension_1.1.61781.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.AVCEncoderVideoExtension_1.0.271.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.HEVCVideoExtension_2.0.61931.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MPEG2VideoExtension_1.0.61931.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.VP9VideoExtensions_1.1.451.0_neutral_~_8wekyb3d8bbwe
dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WebMediaExtensions_1.0.62931.0_neutral_~_8wekyb3d8bbwe
rem Photos
rem dism /image:%FolderPath%\scratchdir /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Windows.Photos_24.24010.29003.0_neutral_~_8wekyb3d8bbwe
timeout /t 1 /nobreak > nul
cls
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-InternetExplorer-Optional-Package~31bf3856ad364e35~amd64~en-US~11.0.22621.1 > nul
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-InternetExplorer-Optional-Package~31bf3856ad364e35~amd64~~11.0.22621.525 > nul
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-Kernel-LA57-FoD-Package~31bf3856ad364e35~amd64~~10.0.22621.525 > nul
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-LanguageFeatures-Handwriting-en-us-Package~31bf3856ad364e35~amd64~~10.0.22621.525 > nul
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-LanguageFeatures-OCR-en-us-Package~31bf3856ad364e35~amd64~~10.0.22621.525 > nul
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-LanguageFeatures-Speech-en-us-Package~31bf3856ad364e35~amd64~~10.0.22621.525 > nul
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-LanguageFeatures-TextToSpeech-en-us-Package~31bf3856ad364e35~amd64~~10.0.22621.525 > nul
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-TabletPCMath-Package~31bf3856ad364e35~amd64~~10.0.22621.525 > nul
dism /image:%FolderPath%\scratchdir /Remove-Package /PackageName:Microsoft-Windows-Wallpaper-Content-Extended-FoD-Package~31bf3856ad364e35~amd64~~10.0.22621.525 > nul
rd "%FolderPath%\scratchdir\Program Files (x86)\Microsoft\Edge" /s /q
rd "%FolderPath%\scratchdir\Program Files (x86)\Microsoft\EdgeUpdate" /s /q
takeown /f %FolderPath%\scratchdir\Windows\System32\OneDriveSetup.exe
icacls %FolderPath%\scratchdir\Windows\System32\OneDriveSetup.exe /grant Administrators:F /T /C
del /f /q /s "%FolderPath%\scratchdir\Windows\System32\OneDriveSetup.exe"
echo Succeed
timeout /t 2 /nobreak > nul
cls
echo Apply user setting...
reg load HKLM\zCOMPONENTS "%FolderPath%\scratchdir\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\zDEFAULT "%FolderPath%\scratchdir\Windows\System32\config\default" >nul
reg load HKLM\zNTUSER "%FolderPath%\scratchdir\Users\Default\ntuser.dat" >nul
reg load HKLM\zSOFTWARE "%FolderPath%\scratchdir\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\zSYSTEM "%FolderPath%\scratchdir\Windows\System32\config\SYSTEM" >nul
			Reg add "HKLM\zDEFAULT\Control Panel\UnsupportedHardwareNotificationCache" /v "SV1" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zDEFAULT\Control Panel\UnsupportedHardwareNotificationCache" /v "SV2" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zNTUSER\Control Panel\UnsupportedHardwareNotificationCache" /v "SV1" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zNTUSER\Control Panel\UnsupportedHardwareNotificationCache" /v "SV2" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassCPUCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassRAMCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassSecureBootCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassStorageCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassTPMCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\MoSetup" /v "AllowUpgradesWithUnsupportedTPMOrCPU" /t REG_DWORD /d "1" /f >nul 2>&1

Reg add "HKLM\zSOFTWARE\Microsoft\Windows\CurrentVersion\Communications" /v "ConfigureChatAutoInstall" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\zNTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zNTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zNTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zSOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "ConfigureStartPins" /t REG_SZ /d "{\"pinnedList\": [{}]}" /f >nul 2>&1
Reg add "HKLM\zSOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" /v "BypassNRO" /t REG_DWORD /d "1" /f >nul 2>&1
copy /y %~dp0autounattend.xml %FolderPath%\scratchdir\Windows\System32\Sysprep\autounattend.xml
Reg add "HKLM\zSOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\zSOFTWARE\Policies\Microsoft\Windows\Windows Chat" /v "ChatIcon" /t REG_DWORD /d "3" /f >nul 2>&1
Reg add "HKLM\zNTUSER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f >nul 2>&1
reg unload HKLM\zCOMPONENTS >nul 2>&1
reg unload HKLM\zDRIVERS >nul 2>&1
reg unload HKLM\zDEFAULT >nul 2>&1
reg unload HKLM\zNTUSER >nul 2>&1
reg unload HKLM\zSCHEMA >nul 2>&1
reg unload HKLM\zSOFTWARE >nul 2>&1
reg unload HKLM\zSYSTEM >nul 2>&1
dism /image:%FolderPath%\scratchdir /Cleanup-Image /StartComponentCleanup /ResetBase
dism /unmount-image /mountdir:%FolderPath%\scratchdir /commit
Dism /Export-Image /SourceImageFile:%FolderPath%\sources\install.wim /SourceIndex:%index% /DestinationImageFile:%FolderPath%\sources\install2.wim /compress:max
del %FolderPath%\sources\install.wim
ren %FolderPath%\sources\install2.wim install.wim
timeout /t 2 /nobreak > nul
cls
dism /mount-image /imagefile:%FolderPath%\sources\boot.wim /index:2 /mountdir:%FolderPath%\scratchdir
reg load HKLM\zCOMPONENTS "%FolderPath%\scratchdir\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\zDEFAULT "%FolderPath%\scratchdir\Windows\System32\config\default" >nul
reg load HKLM\zNTUSER "%FolderPath%\scratchdir\Users\Default\ntuser.dat" >nul
reg load HKLM\zSOFTWARE "%FolderPath%\scratchdir\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\zSYSTEM "%FolderPath%\scratchdir\Windows\System32\config\SYSTEM" >nul
			Reg add "HKLM\zDEFAULT\Control Panel\UnsupportedHardwareNotificationCache" /v "SV1" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zDEFAULT\Control Panel\UnsupportedHardwareNotificationCache" /v "SV2" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zNTUSER\Control Panel\UnsupportedHardwareNotificationCache" /v "SV1" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zNTUSER\Control Panel\UnsupportedHardwareNotificationCache" /v "SV2" /t REG_DWORD /d "0" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassCPUCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassRAMCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassSecureBootCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassStorageCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\LabConfig" /v "BypassTPMCheck" /t REG_DWORD /d "1" /f >nul 2>&1
			Reg add "HKLM\zSYSTEM\Setup\MoSetup" /v "AllowUpgradesWithUnsupportedTPMOrCPU" /t REG_DWORD /d "1" /f >nul 2>&1
reg unload HKLM\zCOMPONENTS >nul 2>&1
reg unload HKLM\zDRIVERS >nul 2>&1
reg unload HKLM\zDEFAULT >nul 2>&1
reg unload HKLM\zNTUSER >nul 2>&1
reg unload HKLM\zSCHEMA >nul 2>&1
reg unload HKLM\zSOFTWARE >nul 2>&1
reg unload HKLM\zSYSTEM >nul 2>&1
dism /unmount-image /mountdir:%FolderPath%\scratchdir /commit 
cls
copy /y %~dp0autounattend.xml %FolderPath%\autounattend.xml
echo Export ISO...
%~dp0oscdimg.exe -m -o -u2 -udfver102 -bootdata:2#p0,e,b%FolderPath%\boot\etfsboot.com#pEF,e,b%FolderPath%\efi\microsoft\boot\efisys.bin %FolderPath% %~dp0WindowsLite.iso
echo Done!Please press any key to close.
pause 
echo Exit...
rd %FolderPath%\scratchdir /s /q 
exit