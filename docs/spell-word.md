*spell-word.ps1*
================

This PowerShell script spells the given word by text-to-speech (TTS).

Parameters
----------
```powershell
PS> ./spell-word.ps1 [[-word] <String>] [<CommonParameters>]

-word <String>
    Specifies the word to spell
    
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
PS> ./spell-word

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
	Spells a word
.DESCRIPTION
	This PowerShell script spells the given word by text-to-speech (TTS).
.PARAMETER word
        Specifies the word to spell
.EXAMPLE
	PS> ./spell-word
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$word = "")

try {
	if ($word -eq "" ) { $word = read-host "Enter word to spell" }

	[char[]]$ArrayOfChars = $word.ToUpper()
	$Reply = ""
	foreach($Char in $ArrayOfChars) {
		$Reply += $Char
		$Reply += " "
	}
	& "$PSScriptRoot/speak-english.ps1" "$Reply"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
        exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of spell-word.ps1 as of 12/07/2023 20:24:23)*
