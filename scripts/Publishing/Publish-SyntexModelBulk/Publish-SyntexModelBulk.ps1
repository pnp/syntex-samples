$contentCenterURL = "https://contoso.sharepoint.com/sites/contentcenter"
$targetsCSV = "./Publish-SyntexModelBulk.csv"

# Connect to content center
Connect-PnPOnline -url $contentCenterURL

# Import input CSV of models and target libraries
$targetLibraries = Import-Csv -Path $targetsCSV

# Create new batch
$batch = New-PnPBatch

# Loop through targets in CSV and create request for batching
foreach ($target in $targetLibraries) {
    Publish-PnPSyntexModel -Model $target.ModelName -TargetSiteUrl $target.TargetSiteUrl -TargetWebServerRelativeUrl $target.TargetWebServerRelativeUrl -TargetLibraryServerRelativeUrl $target.TargetLibraryServerRelativeUrl -Batch $batch
}

# Run batched requests
Invoke-PnPBatch -Batch $batch