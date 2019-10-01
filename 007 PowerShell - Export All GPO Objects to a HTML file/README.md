# 006 PowerShell - Export AD Users and Groups with All Properties

```
006 PowerShell - Export AD Users and Groups with All Properties
       README.md
```

## How-to

```ps1
Import-Module ActiveDirectory
Get-ADUser -filter * -properties * | Export-Csv Get-ADUser.csv
Get-ADGroup -filter * -properties * | Export-Csv Get-ADGroup.csv
```