Clear-Host
Remove-Module -Name Sophia -Force -ErrorAction Ignore
Import-Module -Name $PSScriptRoot\Sophia.psd1 -PassThru -Force
Import-LocalizedData -BindingVariable Global:Localization -FileName Sophia
Check
CreateRestorePoint

# Privacy & Telemetry

TelemetryService -Disable
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

# UI and Personalization

ThisPC -Show
CheckBoxes -Disable
HiddenItems -Enable
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
TrayIcons -Show
UnpinTaskbarEdgeStore
ControlPanelView -LargeIcons
WindowsColorScheme -Dark
AppMode -Dark
NewAppInstalledNotification -Hide
FirstLogonAnimation -Disable
JPEGWallpapersQuality -Max
TaskManagerWindow -Expanded
RestartNotification -Show
ShortcutsSuffix -Disable
PrtScnSnippingTool -Enable

# OneDrive

UninstallOneDrive

# System

StorageSense -Enable
StorageSenseFrequency -Month
StorageSenseTempFiles -Enable
StorageSenseRecycleBin -Enable
Hibernate -Disable
TempPath -SystemDrive
Win32LongPathLimit -Disable
BSoDStopError -Enable
AdminApprovalMode -Disable
MappedDrivesAppElevatedAccess -Enable
DeliveryOptimization -Disable
WaitNetworkStartup -Enable
WindowsManageDefaultPrinter -Disable
WindowsFeatures -Disable
DisableWindowsCapabilities
UpdateMicrosoftProducts -Enable
BackgroundUWPApps -Disable
PowerManagementScheme -High
LatestInstalled.NET -Enable
PCTurnOffDevice -Disable
SetInputMethod -English
ChangeUserShellFolderLocation -Root
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

# Start

RecentlyAddedApps -Hide
AppSuggestions -Hide
RunCMDShortcut -Elevated
UnpinAllStartTiles
syspin
PinControlPanel
PinDevicesPrinters
PinCommandPrompt

# UWP

UninstallUWPApps
InstallHEVC
CortanaAutostart -Disable
CheckUWPAppsUpdates

# Gaming

XboxGameBar -Disable
XboxGameTips -Disable
SetAppGraphicsPerformance
GPUScheduling -Enable

# Scheduled

CreateCleanUpTask
CreateSoftwareDistributionTask
CreateTempTask

# Defender & Security

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
WindowsScriptHost -Disable
WindowsSandbox -Enable

# Context

MSIExtractContext -Add
CABInstallContext -Add
RunAsDifferentUserContext -Add
CastToDeviceContext -Hide
ShareContext -Hide
EditWithPhotosContext -Hide
CreateANewVideoContext -Hide
ImagesEditContext -Hide
PrintCMDContext -Hide
IncludeInLibraryContext -Hide
SendToContext -Hide
BitLockerContext -Hide
BitmapImageNewContext -Remove
RichTextDocumentNewContext -Remove
CompressedFolderNewContext -Remove
MultipleInvokeContext -Enable
UseStoreOpenWith -Hide
PreviousVersionsPage -Hide

# Other

TaskbarSearch -Hide

Refresh
Errors