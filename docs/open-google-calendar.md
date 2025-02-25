*open-google-calendar.ps1*
================

This PowerShell script launches the Web browser with the Google Calendar website.

Parameters
----------
```powershell
PS> ./open-google-calendar.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./open-google-calendar

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
	Opens Google Calendar
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Calendar website.
.EXAMPLE
	PS> ./open-google-calendar
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://calendar.google.com"
exit 0 # success
```

*(generated by convert-ps2md.ps1 using the comment-based help of open-google-calendar.ps1 as of 12/07/2023 20:24:21)*
