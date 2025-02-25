*list-workdir.ps1*
================

This PowerShell script lists the path to current working directory (but not the content itself).

Parameters
----------
```powershell
PS> ./list-workdir.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./list-workdir.ps1
📂C:\Users\Markus

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
	Lists the current working directory
.DESCRIPTION
	This PowerShell script lists the path to current working directory (but not the content itself).
.EXAMPLE
	PS> ./list-workdir.ps1
	📂C:\Users\Markus
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Path = Resolve-Path -Path "$PWD"
	"📂$Path"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of list-workdir.ps1 as of 12/07/2023 20:24:20)*
