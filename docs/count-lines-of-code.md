*count-lines-of-code.ps1*
================

This PowerShell script counts the number of code lines in source code files (.c/.h/.cpp/.hpp/.java/.ps1/.txt/.md) within a directory tree.

Parameters
----------
```powershell
PS> ./count-lines-of-code.ps1 [[-path] <String>] [<CommonParameters>]

-path <String>
    Specifies the path to the directory tree.
    
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
PS> ./count-lines-of-code.ps1 cmake
✔️ 📂cmake has 11411 source code files with 639921 lines of code (LOC, took 34 sec)

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
	Counts the lines of code (LOC)
.DESCRIPTION
	This PowerShell script counts the number of code lines in source code files (.c/.h/.cpp/.hpp/.java/.ps1/.txt/.md) within a directory tree.
.PARAMETER path
	Specifies the path to the directory tree.
.EXAMPLE
	PS> ./count-lines-of-code.ps1 cmake
	✔️ 📂cmake has 11411 source code files with 639921 lines of code (LOC, took 34 sec)
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$path = "")

try {
	if ($path -eq "" ) { $path = Read-Host "Enter the path to the directory tree" }

	Write-Progress "Counting lines.."
	$stopWatch = [system.diagnostics.stopwatch]::startNew()
	$path = Resolve-Path "$path"

	[int64]$files = [int64]$LOC = 0
	Get-ChildItem -Path $path -Include *.c,*.h,*.cpp,*.hpp,*.java,*.ps1,*.txt,*.md -Recurse | ForEach-Object {
		$LOC += (Get-Content $_.FullName | Measure-Object -line).Lines
		$files++
	}

	$folderName = (Get-Item "$path").Name
	Write-Progress -completed " "
	[int]$Elapsed = $stopWatch.Elapsed.TotalSeconds
	"✔️ 📂$folderName has $files source code files with $LOC lines of code (LOC, took $Elapsed sec)" 
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of count-lines-of-code.ps1 as of 12/07/2023 20:24:17)*
