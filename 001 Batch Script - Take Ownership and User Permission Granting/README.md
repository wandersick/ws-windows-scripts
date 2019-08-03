# 001 Batch Script - Take Ownership and User Permission Granting

```
001 Batch Script - Take Ownership and User Permission Granting
       permission-command-01.bat
       README.txt
```

**REMINDER** Please be careful of the power of automation. Test on a smaller number of testing objects to confirm OK before applying to a lot of objects

## Background

As some user profiles or home folders cannot be accessed by administrators and even users themselves, file server migration cannot be performed without access-denied errors

## Solution

Run permission-command.bat which performs the below for a specified folder

- For each sub-folder, assume the folder name is the username
  - Take ownership on each sub-folder as `Administrators` group
  - Grant each sub-folder `Full Control` permissions to the username (taken from each sub-folder name)

**Step 1**. Record the current folder permissions using any method (BEFORE)

**Step 2**. Edit permission-command.bat

- Change folder path to the desired folder where the script will apply the change
- e.g. set folderPath=`E:\Homedir\staff`

**Step 3**. Run `permission-command.bat` to apply the change

**Step 4**. Verification

- Record the current folder permissions (AFTER)
- Verify by comparing both BEFORE and AFTER permissions
