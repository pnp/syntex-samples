
$SiteURL = "https://contoso.sharepoint.com/sites/DemoSyntexApp"
$ContentCenterURL = "https://contoso.sharepoint.com/sites/ContosoContentCenter"

$LibraryNameSA = "Service Agreement"
$LibraryNameCA = "Contract Management Hub"

 
#Connect to PNP Online
Connect-PnPOnline -Url $SiteURL

Write-Host "Create Contract Management Hub document library"
New-PnPList -Title $LibraryNameCA -Template DocumentLibrary -OnQuickLaunch

Write-Host "Create ServiceAgreementLink column on Contact Management Hub library"
Add-PnPField -List $LibraryNameCA -DisplayName "ServiceAgreementLink" -InternalName "ServiceAgreementLink"  -Type "Text" -AddToAllContentTypes

Write-Host "Create Service Agreement document library"
New-PnPList -Title $LibraryNameSA -Template DocumentLibrary -OnQuickLaunch

Write-Host "Associate model to Contract Management Hub document library"
Connect-PnPOnline -Url $ContentCenterURL -Credentials $cred
Publish-PnPSyntexModel -Model "Benefit Changes Service Agreement" -ListWebUrl $SiteURL -List $LibraryNameCA
Write-Host "Waiting....."
Start-Sleep -Milliseconds 10000




