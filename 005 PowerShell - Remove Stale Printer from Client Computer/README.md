# 005 PowerShell - Remove Stale Printer from Client Computer

```
005 PowerShell - Remove Stale Printer from Client Computer
       README.md
```

In this case, AD-deployed printers were removed incorrectly by simply deleting them from Print Management from the printer server (they should have been first removed from AD by selecting "Remove from Directory").

In any case, below are PowerShell command used to remove stale printers of specific words.

## How-to

```ps1
Get-Printer | where name -Like "*Printer_Name_Keyword*"
```