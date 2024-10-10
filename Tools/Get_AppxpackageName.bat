@echo on
echo GetAppxPackage...

rem use PowerShell get the appxpackage name.
powershell -Command "Get-AppxPackage -Name *Clipchamp* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *BingNews* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *BingSearch* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *BingWeather* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *GamingApp* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *GetHelp* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *MicrosoftOfficeHub* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *MicrosoftSolitaireCollection* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *MicrosoftStickyNotes* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *OutlookForWindows* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *Paint* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *PowerAutomateDesktop* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *ScreenSketch* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *Todos* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *Windows.DevHome* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WindowsAlarms* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WindowsCalculator* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WindowsCamera* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WindowsFeedbackHub* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WindowsNotepad* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WindowsSoundRecorder* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *Xbox.TCUI* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *XboxGamingOverlay* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *XboxSpeechToTextOverlay* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *YourPhone* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *ZuneMusic* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *QuickAssist* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WebExperience* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *CrossDevice* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *MSTeams* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *Copilot* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WidgetsPlatformRuntime* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *PeopleExperienceHost* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"

rem Print
powershell -Command "Get-AppxPackage -Name *PrintQueueActionCenter* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *PrintDialog* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *PrintQueueActionCenter* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"

rem Videos Extension
powershell -Command "Get-AppxPackage -Name *AV1VideoExtension* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *AVCEncoderVideoExtension* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *HEVCVideoExtension* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *MPEG2VideoExtension* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *VP9VideoExtensions* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WebMediaExtensions* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"

rem Photos
powershell -Command "Get-AppxPackage -Name *Photos* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *HEIFImageExtension* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *WebpImageExtension* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"
powershell -Command "Get-AppxPackage -Name *RawImageExtension* | Select-Object -ExpandProperty PackageFullName >> appxpackage.txt"

echo save to appxpackage.txt
pause
