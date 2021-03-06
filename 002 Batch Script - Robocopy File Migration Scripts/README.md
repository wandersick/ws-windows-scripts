# 002 Batch Script - Robocopy File Migration Scripts

```
002 Batch Script - Robocopy File Migration Scripts
       rcopy-01.bat
       rcopy-02.bat
       README.md
```

**REMINDER** Please be careful of the power of automation. Test on a smaller number of testing objects to confirm OK before applying to a lot of objects

## Background

Several issues have been encountered:

1. Files without appropriate permissions could not be copied using robocopy
2. Files are copied slowly using robocopy
3. Robocopy scripts fails to run, noticing there is a script named `robocopy.bat` in the same folder
4. EFS-encrypted files cannot be copied without users' password

## Solution

### 1. Copy files without permissions - rcopy-01.bat

Add the below parameter(s) to `robocopy`:

- `/zb`               copy files that cannot be copied using "backup rights"

### 2. Copy files faster - rcopy-01.bat

Add the below parameter(s) to `robocopy`:

- `/r:0 /w:0`         avoid waiting between errors
- `/mt:32`            copy a single file faster in parallel (specify a value between 8-128)

Other Ways to Speed Up:

- Run Robocopy in new server with better hardware instead of old server
- Run multiple robocopy processes, each copying different folders
- Disable anti-virus while copying

### 3. Issue of mis-calling robocopy.bat instead of robocopy.exe - rcopy-01.bat

- Avoid naming script as `robocopy.bat` as it conflicts with `robocopy.exe`. Other robocopy scripts that calls `robocopy` would execute `robocopy.bat` instead of `robocopy.exe`

### 4. Copy EFS-encrypted files without users' password - rcopy-02.bat

- `/efsraw`             copy EFS-encrypted files in EFS RAW mode (cannot be used with `/mt` or `/ipg`)

Tip:

- Use ERDExplorer for working with file migration without touching permissions and ownerships
- Consider using `/mir` during final switchover to prevent user-deleted files from showing up
