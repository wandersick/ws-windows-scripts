# 003 PowerShell - Set AD Home Directory and Profile Path

```
003 PowerShell - Set AD Home Directory and Profile Path
       Get-AdAllUsers.ps1
       Set-AdHomeDirectory.ps1
       Set-AdProfilePath.ps1
```

**REMINDER** Please be careful of the power of automation. Test on a smaller number of testing objects to confirm OK before applying to a lot of objects

## Background

Existing home directory and profile path settings of over thousands of Active Directory users contain existing hostname `old-string`. Such string needs to be replaced with `new-string`, i.e. hostname of the new Domain Controller server

## Solution

Follow below instructions:

**Step 1**. Export AD user records to CSV `AD_All_Users.csv` as follows:

- Run `Get-AdAllUsers.ps1` in PowerShell (as admin) on a Domain Controller

(A CSV file named `AD_All_Users.csv` will be created in the same directory)

**Step 2**. Edit output CSV `AD_All_Users.csv` with Excel

a. Replace the desired records, e.g. `old-string` with `new-string`
b. Remove empty `ProfilePath` entries and save it as `AD_ProfilePath.csv`
c. Remove empty `HomeDirectory` entries and save it as `AD_HomeDirectory.csv`

(It is because empty entries are unsupported)

**Step 3**. Apply updated CSV `AD_All_Users.csv` with new `ProfilePath` or `HomeDirectory` to Active Directory

- Open `Set-AdHomeDirectory.ps1` and `Set-AdProfilePath.ps1` with Notepad and change path of the CSV to the location of the CSV file
e.g. $UserList = Import-Csv -Path "C:\Users\Administrator\Desktop\AD_ProfilePath.csv";

- Run `Set-AdHomeDirectory.ps1` and `Set-AdProfilePath.ps1` in PowerShell (as admin) on a Domain Controller

**Step 4**. Verification

a. Rename previous `AD_All_Users.csv` as `AD_All_Users_BEFORE.csv` and rerun `Get-AdAllUsers.ps1` in PowerShell (as admin) on a DC
b. Rename new `AD_All_Users.csv` as `AD_All_Users_AFTER.csv`
c. Verify by comparing both `AD_All_Users_BEFORE.csv` `AD_All_Users_AFTER.csv`, e.g. using WinMerge, Beyond Compare, Notepad++ (Compare plugin)

## References

1. PowerShell: Get-ADUser to retrieve logon scripts and home directories – Part 1

- https://www.oxfordsbsguy.com/2013/04/16/powershell-get-aduser-to-retrieve-logon-scripts-and-home-directories/

2. Using PowerShell, set the AD home directory for a user, given the display name

- https://stackoverflow.com/questions/21030086/using-powershell-set-the-ad-home-directory-for-a-user-given-the-display-name
