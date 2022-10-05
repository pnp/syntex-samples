Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourSite"
$list = Get-PnPList -Identity "Documents"
$fieldName = "Status"
$fieldFilter = "Active"

$listItems = (Get-PnPListItem -List $list -fields $fieldName).fieldValues
$targetItems = $listItems | Where-Object -Property Provider -EQ -Value $fieldFilter

$classifyBatch = New-PnPBatch
foreach ($listItem in $targetItems) {
    Request-PnPSyntexClassifyAndExtract -FileUrl $listItem.FileRef -Batch $classifyBatch
}
Invoke-PnPBatch -Batch $classifyBatch