*open-three-d-viewer.ps1*
================

This script launches the 3D-Viewer application.

Parameters
----------
```powershell
PS> ./open-three-d-viewer.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./open-three-d-viewer

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
	Launches the 3D-Viewer app
.DESCRIPTION
	This script launches the 3D-Viewer application.
.EXAMPLE
	PS> ./open-three-d-viewer
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

Start-Process com.microsoft.3dviewer:
exit 0 # success
```

*(generated by convert-ps2md.ps1 using the comment-based help of open-three-d-viewer.ps1 as of 12/07/2023 20:24:21)*
