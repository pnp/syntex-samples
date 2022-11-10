Import-Module PnP.PowerShell
Import-Module Microsoft.Online.SharePoint.PowerShell

#URL SPO Target site
$SiteURL = "https://xxxx.sharepoint.com/sites/DemoSyntexApp"
#URL SharePoint Content Center Site
$ContentCenterURL = "https://xxxx.sharepoint.com/sites/ContosoContentCenter"
#Username
$username = "admin@xxxx.onmicrosoft.com"
#Password
$password = "xxxx"


$LibraryNameSA = "Service Agreement"
$LibraryNameCA = "Contract Management Hub"

$cred = New-Object -TypeName System.Management.Automation.PSCredential -argumentlist $username , $(convertto-securestring $password -asplaintext -force)
 
#Connect to PNP Online
Connect-PnPOnline -Url $SiteURL -Credentials $cred

write-host "Create Contract Management Hub document library"
New-PnPList -Title $LibraryNameCA -Template DocumentLibrary -OnQuickLaunch

write-host "Create Service Agreement document library"
New-PnPList -Title $LibraryNameSA -Template DocumentLibrary -OnQuickLaunch

write-host "Associate model to Contract Management Hub document library"
Connect-PnPOnline -Url $ContentCenterURL -Credentials $cred
Publish-PnPSyntexModel -Model "Benefit Changes Service Agreement" -ListWebUrl $SiteURL -List $LibraryNameCA
write-host "Waiting....."
Start-Sleep -Milliseconds 10000

write-host "Create ServiceAgreementLink column to Contact Management list"
Add-PnPField -List $LibraryNameCA -DisplayName "ServiceAgreementLink" -InternalName "ServiceAgreementLink"  -Type "Text" -AddToAllContentTypes


