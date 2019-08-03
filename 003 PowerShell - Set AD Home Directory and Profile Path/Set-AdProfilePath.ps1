# Import user data from CSV
$UserList = Import-Csv -Path "C:\Users\Administrator\Desktop\AD_ProfilePath.csv";

# For each user
foreach ($User in $UserList) {
    # Set their profile path in Active Directory
    Set-ADUser -Identity $User.SamAccountName -ProfilePath $User.ProfilePath;
}

Pause
