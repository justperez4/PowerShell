*my-profile.ps1*
================

my-profile.ps1 


Parameters
----------
```powershell


[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Script Content
--------------
```powershell
# MY POWERSHELL PROFILE (this profile file defines the look & feel of PowerShell)

# WINDOW TITLE
if ($IsLinux) { $Username = $(whoami) } else { $Username = $env:USERNAME }
$host.ui.RawUI.WindowTitle = "$Username @ $(hostname)"

# COMMAND PROMPT
function prompt { write-host -noNewline -foregroundColor yellow "`n➤"; return " " }

# ALIAS NAMES
del alias:pwd -force -errorAction SilentlyContinue
set-alias -name pwd -value list-workdir.ps1	# pwd = print working directory
set-alias -name ll -value get-childitem		# ll = list folder (long format)
del alias:ls -force -errorAction SilentlyContinue 
set-alias -name ls -value list-folder.ps1	# ls = list folder (short format)
```

*(generated by convert-ps2md.ps1 using the comment-based help of my-profile.ps1 as of 12/07/2023 20:24:20)*
