*sync-repo.ps1*
================

This PowerShell script synchronizes a local Git repository by pull and push (including submodules).

Parameters
----------
```powershell
PS> ./sync-repo.ps1 [[-path] <String>] [<CommonParameters>]

-path <String>
    Specifies the path to the Git repository
    
    Required?                    false
    Position?                    1
    Default value                "$PWD"
    Accept pipeline input?       false
    Accept wildcard characters?  false

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./sync-repo.ps1 C:\MyRepo
⏳ (1/4) Searching for Git executable...  git version 2.42.0.windows.1
⏳ (2/4) Checking local repository...     📂C:\MyRepo
⏳ (3/4) Pulling remote updates...        Already up to date.
⏳ (4/4) Pushing local updates...         Everything up-to-date
✔️ Synced repo 📂MyRepo in 5 sec

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
	Synchronizes a repo 
.DESCRIPTION
	This PowerShell script synchronizes a local Git repository by pull and push (including submodules).
.PARAMETER path
	Specifies the path to the Git repository
.EXAMPLE
	PS> ./sync-repo.ps1 C:\MyRepo
	⏳ (1/4) Searching for Git executable...  git version 2.42.0.windows.1
	⏳ (2/4) Checking local repository...     📂C:\MyRepo
	⏳ (3/4) Pulling remote updates...        Already up to date.
	⏳ (4/4) Pushing local updates...         Everything up-to-date
	✔️ Synced repo 📂MyRepo in 5 sec
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$path = "$PWD")

try {
	$StopWatch = [system.diagnostics.stopwatch]::startNew()

	Write-Host "⏳ (1/4) Searching for Git executable...  " -noNewline
 	& git --version
 	if ($lastExitCode -ne "0") { throw "Can't execute 'git' - make sure Git is installed and available" }

	Write-Host "⏳ (2/4) Checking local repository...     📂$path"
	if (!(Test-Path "$path" -pathType container)) { throw "Can't access folder: $path" }
	$pathName = (Get-Item "$path").Name

	Write-Host "⏳ (3/4) Pulling remote updates...        " -noNewline
	& git -C "$Path" pull --all --recurse-submodules
	if ($lastExitCode -ne "0") { throw "'git pull --all --recurse-submodes' failed" }

	Write-Host "⏳ (4/4) Pushing local updates...         " -noNewline
	& git -C "$Path" push
	if ($lastExitCode -ne "0") { throw "'git push' failed" }

	[int]$Elapsed = $StopWatch.Elapsed.TotalSeconds
	"✔️ Synced repo 📂$pathName in $Elapsed sec"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of sync-repo.ps1 as of 12/07/2023 20:24:23)*
