Get-ADUser -filter * -properties ScriptPath, HomeDrive, HomeDirectory, ProfilePath | Export-Csv AD_All_Users.csv

Pause
