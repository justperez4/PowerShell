*write-moon.ps1*
================

This PowerShell script writes the current moon phase to the console.

Parameters
----------
```powershell
PS> ./write-moon.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./write-moon.ps1

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
	Writes the moon phase
.DESCRIPTION
	This PowerShell script writes the current moon phase to the console.
.EXAMPLE
	PS> ./write-moon.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	(Invoke-WebRequest http://wttr.in/Moon -userAgent "curl" -useBasicParsing).Content
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of write-moon.ps1 as of 12/07/2023 20:24:24)*
