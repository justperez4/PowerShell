*locate-my-phone.ps1*
================

This PowerShell script launches the Web browser with the Google Find My Device website.

Parameters
----------
```powershell
PS> ./locate-my-phone.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./locate-my-phone.ps1

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
	Opens Google Find My Device 
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Find My Device website.
.EXAMPLE
	PS> ./locate-my-phone.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://www.google.com/android/find"
exit 0 # success
```

*(generated by convert-ps2md.ps1 using the comment-based help of locate-my-phone.ps1 as of 12/07/2023 20:24:20)*
