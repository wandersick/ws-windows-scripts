# 007 PowerShell - Export All GPO Objects to a HTML file

```
006 007 PowerShell - Export All GPO Objects to a HTML file
       README.md
```

## How-to

```ps1
Import-Module GroupPolicy
Get-GPOReport -All -ReportType HTML -Path Get-GPOReport.html
```