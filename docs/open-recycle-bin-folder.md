*open-recycle-bin-folder.ps1*
================

This script launches the File Explorer with the user's recycle bin folder.

Parameters
----------
```powershell
PS> ./open-recycle-bin-folder.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./open-recycle-bin-folder

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
	Opens the recycle bin folder
.DESCRIPTION
	This script launches the File Explorer with the user's recycle bin folder.
.EXAMPLE
	PS> ./open-recycle-bin-folder
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	start shell:recyclebinfolder
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of open-recycle-bin-folder.ps1 as of 12/07/2023 20:24:21)*
