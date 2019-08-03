# Import user data from CSV
$UserList = Import-Csv -Path "C:\Users\Administrator\Desktop\AD_HomeDirectory.csv";

# For each user
foreach ($User in $UserList) {
	# Set their home directory in Active Directory
    Set-ADUser -Identity $User.SamAccountName -HomeDirectory $User.HomeDirectory;
}

Pause
