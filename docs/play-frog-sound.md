*play-frog-sound.ps1*
================

This PowerShell script plays a frog sound.

Parameters
----------
```powershell
PS> ./play-frog-sound.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./play-frog-sound

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
	Plays a frog sound
.DESCRIPTION
	This PowerShell script plays a frog sound.
.EXAMPLE
	PS> ./play-frog-sound
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/frog.mp3"
exit 0 # success
```

*(generated by convert-ps2md.ps1 using the comment-based help of play-frog-sound.ps1 as of 12/07/2023 20:24:22)*
