<#
.SYNOPSIS
	simulate-presence.ps1 [<IP-address>]
.DESCRIPTION
	Simulates the human presence against burglars
.EXAMPLE
	PS> .\simulate-presence.ps1 192.168.100.100
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz / License: CC0
#>

param([string]$IPaddress = "")

try {
	if ($IPaddress -eq "" ) { $IPaddress = read-host "Enter IP address of Shelly1 device" }

	for ([int]$i = 0; $i -lt 1000; $i++) {
		& "$PSScriptRoot/switch-shelly1.ps1" $IPaddress on 0
		start-sleep -s 10
		& "$PSScriptRoot/switch-shelly1.ps1" $IPaddress off 0
		start-sleep -s 60
	}
	write-host -foregroundColor green "Done."
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
