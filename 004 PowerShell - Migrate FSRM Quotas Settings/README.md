# 004 PowerShell - Migrate FSRM Quotas Settings

```
004 PowerShell - Migrate FSRM Quotas Settings
       README.md
```

This is about my experience in using a PowerShell script developed by Sam Boutros for migrating FSRM quotas, which can be downloaded from Microsoft Technet Gallery:

- https://gallery.technet.microsoft.com/scriptcenter/Powershell-script-to-e159f521

## How-to

Experience in using it for migrating FSRM quotas from Windows Server 2012 R2 (non-English) to 2019 (English):

- Edit downloaded .ps1 script and change the source server to the hostname of old server
- Run the script on new server. Input password of the old server when asked
- To solve the error “Failed to set a remote PS session with computer” when running it on the new server (Windows Server 2019 AD & File Server), edit the script and remove “-Credential \$Cred” in line 148:
  - $Session = New-PSSession -ComputerName $SourceServer -Credential \$Cred -ErrorAction Stop
- Wait for migration to complete
- Verify the migrated items
  - Quota templates, administrative options and quotas are applied to folders
  - Disabled items are not migrated
  - Auto-apply quotas are not migrated and should be manually created afterwards
