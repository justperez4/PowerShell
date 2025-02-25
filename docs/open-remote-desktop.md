*open-remote-desktop.ps1*
================

This script launches the Remote Desktop application.

Parameters
----------
```powershell
PS> ./open-remote-desktop.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./open-remote-desktop

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
	Launches the Remote Desktop app
.DESCRIPTION
	This script launches the Remote Desktop application.
.EXAMPLE
	PS> ./open-remote-desktop
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	start-process ms-rd:
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of open-remote-desktop.ps1 as of 12/07/2023 20:24:21)*
