# ws-scripts

This repository contains a collection of notes and scripts by wandersick (unless specified elsewhere). New things will be added from time to time.

Refer to introductory README files in sub-folders.

## Folder Structure

```
001 Batch Script - Take Ownership and User Permission Granting #ActiveDirectory #DomainController
       permission-command-01.bat
       README.md

002 Batch Script - Robocopy File Migration Scripts #FileServer
       rcopy-01.bat
       README.md

003 PowerShell - Set AD Home Directory and Profile Path #ActiveDirectory #DomainController
       Get-AdAllUsers.ps1
       Set-AdHomeDirectory.ps1
       Set-AdProfilePath.ps1
       README.md

004 PowerShell - Migrate FSRM Quotas Settings #FileServer
       README.md

005 PowerShell - Remove Stale Printer from Client Computer #PrinterServer
       README.md

006 PowerShell - Export AD Users and Groups with All Properties #ActiveDirectory #DomainController
       README.md

007 PowerShell - Export All GPO Objects to a HTML file #ActiveDirectory #GroupPolicy
       README.md

008 PowerShell - Find and Replace #General #FileManipulation
       README.md
```

## Tips

- To run a PowerShell command in Command Prompt, use `powershell -c PowerShell command here ^| another PowerShell command`
