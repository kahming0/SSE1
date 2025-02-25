# Run as Administrator

$backupFile = "$env:USERPROFILE\Desktop\service_backup.json"

$services = @(
	# General Services
	"wuauserv",			# Windows Update
	"SysMain",			# Superfetch / SysMain
	"WSearch",			# Windows Search
	"BITS",				# Background Intelligent Transfer Service
	"WerSvc",			# Windows Error Reporting
	"DPS",				# Diagnostic Policy Service
	"DiagTrack",		# Connected User Experiences and Telemetry
	"TermService",		# Remote Desktop Services
	"bthserv",			# Bluetooth Support Service
	"Spooler",			# Print Spooler
	"WinDefend",		# Windows Defender
	"WpnService",		# Windows Push Notifications
	"Widgets",			# Windows Widgets
    "edgeupdate",		# Microsoft Edge Updater
    "edgeupdatem",		# Microsoft Edge Updater
    "WbioSrvc",			# Windows Hello Biometrics
	"RemoteRegistry",	# Remote Registry Service
    "InstallService",	# Microsoft Store Install Service
    "WaaSMedicSvc"		# Windows Update Medic Service

	# Internet Services
	"NlaSvc",			# Network Location Awareness
	"Netman",			# Network Connections
	"Dhcp",				# DHCP Client (Disables automatic IP assignment)
	"Dnscache",			# DNS Client (Prevents domain resolution)
	"WlanSvc",			# WLAN AutoConfig (Disables Wi-Fi)
	"LanmanWorkstation",	# Workstation Service (Disables SMB file sharing)
	"Tcpip",			# TCP/IP Protocol Driver (Kills internet access)
	"SharedAccess",		# Internet Connection Sharing (ICS)

	# Xbox Services
	"XblAuthManager",	# Xbox Live Auth
	"XblGameSave",		# Xbox Game Save
	"XboxNetApiSvc",	# Xbox Networking
	"GamingServices"	# Gaming Services
)

# Backup current services
if (-Not (Test-Path $backupFile)) {
	$backup = @()

	foreach ($service in $services) {
		$currentState = Get-Service -Name $service -ErrorAction SilentlyContinue
		if ($currentState) {
			$entry = [PSCustomObject]@{
				Name = $service
				Status = $currentState.Status
				StartupType = (Get-WmiObject Win32_Service | Where-Object { $_.Name -eq $service }).StartMode
			}
			$backup += $entry 
		}
	}

	$backup | ConvertTo-Json -Depth 3 | Out-File $backupFile
	Write-Output "Backup saved to $backupFile"

} else {
	Write-Output "Backup file already exists. Skipping backup."
}

# Disable services
foreach ($service in $services) {
	Write-Output "Disabling $service..."
	Stop-Service -Name $service -Force -ErrorAction SilentlyContinue
	Set-Service -Name $service -StartupType Disabled
}

Write-Output "Unnecessary services stopped."