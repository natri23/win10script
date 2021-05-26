Clear-Host
$Host.UI.RawUI.WindowTitle = 'Windows 10 Sophia Script | Copyright farag & oZ-Zo, 2015 to 2021'
Remove-Module -Name Sophia -Force -ErrorAction Ignore
Import-Module -Name $PSScriptRoot\Sophia.psd1 -PassThru -Force
Import-LocalizedData -BindingVariable Global:Localization -FileName Sophia -BaseDirectory $PSScriptRoot\Localizations
Checkings -Warning

#region Protection

Checkings -Warning

#endregion Protection

#region Privacy & Telemetry

DiagTrackService -Disable
DiagnosticDataLevel -Minimal
ErrorReporting -Disable
WindowsFeedback -Disable
ScheduledTasks -Disable
SigninInfo -Disable
LanguageListAccess -Disable
AdvertisingID -Disable
ShareAcrossDevices -Disable
WindowsWelcomeExperience -Hide
WindowsTips -Enable
SettingsSuggestedContent -Hide
AppsSilentInstalling -Disable
WhatsNewInWindows -Disable
TailoredExperiences -Disable
BingSearch -Disable

#endregion Privacy & Telemetry

#region UI & Personalization

ThisPC -Show
CheckBoxes -Disable
HiddenItems -Disable
FileExtensions -Show
MergeConflicts -Show
OpenFileExplorerTo -ThisPC
CortanaButton -Hide
OneDriveFileExplorerAd -Hide
TaskViewButton -Hide
PeopleTaskbar -Hide
SecondsInSystemClock -Show
SnapAssist -Disable
FileTransferDialog -Detailed
FileExplorerRibbon -Expanded
RecycleBinDeleteConfirmation -Enable
3DObjects -Hide
QuickAccessFrequentFolders -Hide
QuickAccessRecentFiles -Hide
WindowsInkWorkspace -Hide
TrayIcons -Hide
MeetNow -Hide
UnpinTaskbarEdgeStore
WindowsColorScheme -Dark
AppMode -Dark
NewAppInstalledNotification -Show
FirstLogonAnimation -Disable
JPEGWallpapersQuality -Max
TaskManagerWindow -Expanded
RestartNotification -Show
ShortcutsSuffix -Disable
PrtScnSnippingTool -Enable
AppsLanguageSwitch -Disable
ControlPanelView -LargeIcons
TaskbarSearch -Hide

#endregion UI & Personalization

#region OneDrive

OneDrive -Uninstall

#endregion OneDrive

#region System

StorageSense -Enable
StorageSenseFrequency -Month
StorageSenseTempFiles -Enable
StorageSenseRecycleBin -Enable
Hibernate -Enable
Win32LongPathLimit -Disable
BSoDStopError -Enable
AdminApprovalMode -Disable
MappedDrivesAppElevatedAccess -Enable
DeliveryOptimization -Disable
WaitNetworkStartup -Enable
WindowsManageDefaultPrinter -Enable
WindowsFeatures -Disable
WindowsCapabilities -Uninstall
PowerManagementScheme -Balanced
LatestInstalled.NET -Enable
PCTurnOffDevice -Disable
SetInputMethod -English
WinPrtScrFolder -Desktop
RecommendedTroubleshooting -Automatic
FoldersLaunchSeparateProcess -Enable
ReservedStorage -Disable
F1HelpPage -Disable
NumLock -Enable
StickyShift -Disable
Autoplay -Disable
ThumbnailCacheRemoval -Disable
SaveRestartableApps -Enable
NetworkDiscovery -Enable
SmartActiveHours -Enable
DeviceRestartAfterUpdate -Enable
SetUserShellFolderLocation -Root

#endregion System

#region WSL


#endregion WSL

#region Start menu

AppSuggestions -Hide
RunPowerShellShortcut -Elevated

#endregion Start menu

#region UWP apps

UninstallUWPApps
HEIF -Install
CortanaAutostart -Disable
BackgroundUWPApps -Disable
CheckUWPAppsUpdates

#endregion UWP apps

#region Gaming

XboxGameBar -Disable
XboxGameTips -Disable
SetAppGraphicsPerformance
GPUScheduling -Enable

#endregion Gaming

#region Scheduled tasks

CleanUpTask -Register
SoftwareDistributionTask -Register
TempTask -Register

#endregion Scheduled tasks

#region Microsoft Defender & Security

AddProtectedFolders
AddAppControlledFolder
AddDefenderExclusionFolder
AddDefenderExclusionFile
NetworkProtection -Enable
PUAppsDetection -Enable
DefenderSandbox -Enable
DismissMSAccount
DismissSmartScreenFilter
AuditProcess -Enable
AuditCommandLineProcess -Enable
EventViewerCustomView -Enable
PowerShellModulesLogging -Enable
PowerShellScriptsLogging -Enable
AppsSmartScreen -Disable
SaveZoneInformation -Disable
WindowsScriptHost -Enable
WindowsSandbox -Disable

#endregion Microsoft Defender & Security

#region Context menu

MSIExtractContext -Add
CABInstallContext -Add
RunAsDifferentUserContext -Add
CastToDeviceContext -Hide
ShareContext -Hide
EditWithPhotosContext -Hide
CreateANewVideoContext -Hide
ImagesEditContext -Show
PrintCMDContext -Hide
IncludeInLibraryContext -Show
SendToContext -Show
BitLockerContext -Hide
BitmapImageNewContext -Remove
RichTextDocumentNewContext -Remove
CompressedFolderNewContext -Add
MultipleInvokeContext -Enable
UseStoreOpenWith -Hide
PreviousVersionsPage -Show

#endregion Context menu

Refresh
Errors