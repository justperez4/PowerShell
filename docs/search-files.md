*search-files.ps1*
================

This PowerShell script searches for a pattern in the given files.

Parameters
----------
```powershell
PS> ./search-files.ps1 [[-pattern] <String>] [[-files] <String>] [<CommonParameters>]

-pattern <String>
    Specifies the search pattern
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false

-files <String>
    Specifies the files
    
    Required?                    false
    Position?                    2
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
PS> ./search-files UFO C:\Temp\*.txt

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
	Searches for a pattern in files
.DESCRIPTION
	This PowerShell script searches for a pattern in the given files.
.PARAMETER pattern
	Specifies the search pattern
.PARAMETER files
	Specifies the files
.EXAMPLE
	PS> ./search-files UFO C:\Temp\*.txt
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$pattern = "", [string]$files = "")

function ListLocations { param([string]$Pattern, [string]$Path)
	$List = Select-String -Path $Path -Pattern "$Pattern" 
	foreach ($Item in $List) {
		New-Object PSObject -Property @{
			'Path' = "$($Item.Path)"
			'Line' = "$($Item.LineNumber)"
			'Text' = "$($Item.Line)"
		}
	}
	write-output "(found $($List.Count) locations with pattern '$pattern')"
}

try {
	if ($pattern -eq "" ) { $pattern = read-host "Enter search pattern" }
	if ($files -eq "" ) { $files = read-host "Enter path to files" }

	ListLocations $pattern $files | format-table -property Path,Line,Text
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of search-files.ps1 as of 12/07/2023 20:24:22)*
