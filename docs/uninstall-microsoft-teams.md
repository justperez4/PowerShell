*uninstall-microsoft-teams.ps1*
================

This PowerShell script uninstalls Microsoft Teams from the local computer.

Parameters
----------
```powershell
PS> ./uninstall-microsoft-teams.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./uninstall-microsoft-teams

```

Notes
-----
Author: Markus Fleschutz | License: CC0

Related Links
-------------
https://github.com/fleschutz/PowerShell

Script Content
--------------
```powershell
<#
.SYNOPSIS
	Uninstalls Microsoft Teams
.DESCRIPTION
	This PowerShell script uninstalls Microsoft Teams from the local computer.
.EXAMPLE
	PS> ./uninstall-microsoft-teams
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	"Uninstalling Microsoft Teams, please wait..."

	& winget uninstall --id Microsoft.Teams
	if ($lastExitCode -ne "0") { throw "Can't uninstall Microsoft Teams, is it installed?" }

	"Microsoft Teams is uninstalled now."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of uninstall-microsoft-teams.ps1 as of 12/07/2023 20:24:24)*
