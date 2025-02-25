*write-lowercase.ps1*
================

This PowerShell script writes the given text in lowercase letters.

Parameters
----------
```powershell
PS> ./write-lowercase.ps1 [[-text] <String>] [<CommonParameters>]

-text <String>
    Specifies the text to write
    
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
PS> ./write-lowercase "Hello World"
hello world

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
	Writes text in lowercase letters
.DESCRIPTION
	This PowerShell script writes the given text in lowercase letters.
.PARAMETER text
	Specifies the text to write
.EXAMPLE
	PS> ./write-lowercase "Hello World"
	hello world
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$text = "")

if ($text -eq "" ) { $text = Read-Host "Enter the text to write" }

Write-Output $text.ToLower()
exit 0 # success
```

*(generated by convert-ps2md.ps1 using the comment-based help of write-lowercase.ps1 as of 12/07/2023 20:24:24)*
