*list-console-colors.ps1*
================

This PowerShell script lists all available console colors.

Parameters
----------
```powershell
PS> ./list-console-colors.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./list-console-colors.ps1



Color     As Foreground     As Background
-----     -------------     -------------
...

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
	Lists all console colors
.DESCRIPTION
	This PowerShell script lists all available console colors.
.EXAMPLE
	PS> ./list-console-colors.ps1

	Color     As Foreground     As Background
	-----     -------------     -------------
	...
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Colors = [Enum]::GetValues([ConsoleColor])
	""
	"Color          As Foreground  As Background"
	"-----          -------------  -------------"
	foreach($Color in $Colors) {
		$Color = "$Color              "
		$Color = $Color.substring(0, 15)
		write-host -noNewline "$Color"
		write-host -noNewline -foregroundcolor $Color "$Color"
		write-host -noNewline -backgroundcolor $Color "$Color"
		write-host ""
	}
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of list-console-colors.ps1 as of 12/07/2023 20:24:18)*
