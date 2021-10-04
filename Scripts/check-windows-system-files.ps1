﻿<#
.SYNOPSIS
	check-windows-system-files.ps1 
.DESCRIPTION
	Checks the validity of the Windows system files (requires admin rights)
.EXAMPLE
	PS> ./check-windows-system-files
	✔️ checked Windows system files
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz · License: CC0
#>

#Requires -RunAsAdministrator

try {
	sfc /verifyOnly
	if ($lastExitCode -ne "0") { throw "'sfc /verifyOnly' failed" }

	"✔️ checked Windows system files"
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
