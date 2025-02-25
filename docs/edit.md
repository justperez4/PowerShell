*edit.ps1*
================

This PowerShell script opens a text editor to edit the given file.

Parameters
----------
```powershell
PS> ./edit.ps1 [[-Filename] <String>] [<CommonParameters>]

-Filename <String>
    Specifies the path to the filename
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./edit.ps1 C:\MyFile.txt

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
	Opens an editor to edit a file
.DESCRIPTION
	This PowerShell script opens a text editor to edit the given file.
.PARAMETER Filename
	Specifies the path to the filename
.EXAMPLE
	PS> ./edit.ps1 C:\MyFile.txt
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$Filename = "")

try {
	if ($IsLinux) {
		& vi "$Filename"
		if ($lastExitCode -ne "0") { throw "Can't execute 'vi' - make sure vi is installed and available" }
	} else {
		& notepad.exe "$Filename"
		if ($lastExitCode -ne "0") { throw "Can't execute 'notepad.exe' - make sure notepad.exe is installed and available" }
	}
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of edit.ps1 as of 12/07/2023 20:24:17)*
