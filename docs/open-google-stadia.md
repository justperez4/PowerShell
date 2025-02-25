*open-google-stadia.ps1*
================

This PowerShell script launches the Web browser with the Google Stadia website.

Parameters
----------
```powershell
PS> ./open-google-stadia.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./open-google-stadia

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
	Opens Google Stadia
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Stadia website.
.EXAMPLE
	PS> ./open-google-stadia
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://stadia.google.com"
exit 0 # success
```

*(generated by convert-ps2md.ps1 using the comment-based help of open-google-stadia.ps1 as of 12/07/2023 20:24:21)*
