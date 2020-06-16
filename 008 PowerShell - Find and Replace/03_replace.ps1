$items = Import-Csv .\01_before_and_after.csv
$content = Get-Content .\02_content_to_replace.csv
foreach ($item in $items)
{
  if (($item.Before -ne $null) -and ($item.Before -ne "") -and ($item.Before -ne " ") -and ($item.After -ne $null) -and ($item.After -ne "") -and ($item.After -ne " ")) {
    # $tempVar = "s/" + $item.Before + "/" + $item.After + "/g"
    # $content = $content | sed "$tempVar"
    $content = $content -replace $item.Before, $item.After
  }
}
$content > .\03_content_replaced_FIN.csv

