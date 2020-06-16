# 008 PowerShell - Find and Replace

```
008 PowerShell - Find and Replace
     01_before_and_after.csv
     02_content_to_replace.csv
     03_replace.ps1
     README.md
```

## How-to

1. Store before (1st column) and after (2nd column) content in `01_before_and_after.csv`, and file with the content to replace in `02_content_to_replace.csv`
2. Run PowerShell in the script directory
3. In PowerShell console, execute `.\03_replace.ps1`
4. A new file with the replaced content will be outputted as `03_content_replaced.csv`

Note: 

- `01_before_and_after.csv`: 1st column = what will be replaced, 2nd column = what is to be replaced with
- `02_content_to_replace.csv` content can be changed, but it is recommended to keep it simple (as few columns as possible) for performance reason
