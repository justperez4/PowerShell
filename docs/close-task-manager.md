*close-task-manager.ps1*
================

This PowerShell script closes the Task Manager application gracefully.

Parameters
----------
```powershell
PS> ./close-task-manager.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./close-task-manager.ps1

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
	Closes the Task Manager
.DESCRIPTION
	This PowerShell script closes the Task Manager application gracefully.
.EXAMPLE
	PS> ./close-task-manager.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

tskill taskmgr
exit 0 # success
```

*(generated by convert-ps2md.ps1 using the comment-based help of close-task-manager.ps1 as of 12/07/2023 20:24:16)*
