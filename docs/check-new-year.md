*check-new-year.ps1*
================

This PowerShell script checks the time until New Year and replies by text-to-speech (TTS).

Parameters
----------
```powershell
PS> ./check-new-year.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./check-new-year

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
	Checks the time until New Year
.DESCRIPTION
	This PowerShell script checks the time until New Year and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-new-year
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Now = [DateTime]::Now
	$NewYear = [Datetime]("12/31/" + $Now.Year)
	$Days = ($NewYear – $Now).Days + 1
	if ($Days -gt 1) {
		& "$PSScriptRoot/speak-english.ps1" "New Year is in $Days days."
	} elseif ($Days -eq 1) {
		& "$PSScriptRoot/speak-english.ps1" "New Year is tomorrow."
	}
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of check-new-year.ps1 as of 12/07/2023 20:24:15)*
