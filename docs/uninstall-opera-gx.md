*uninstall-opera-gx.ps1*
================

This PowerShell script uninstalls Opera GX from the local computer.

Parameters
----------
```powershell
PS> ./uninstall-opera-gx.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./uninstall-opera-gx

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
	Uninstalls Opera GX
.DESCRIPTION
	This PowerShell script uninstalls Opera GX from the local computer.
.EXAMPLE
	PS> ./uninstall-opera-gx
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	"Uninstalling Opera GX, please wait..."

	& winget uninstall "Opera GX"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Opera Browser, is it installed?" }

	"Opera GX is uninstalled now."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of uninstall-opera-gx.ps1 as of 12/07/2023 20:24:24)*
