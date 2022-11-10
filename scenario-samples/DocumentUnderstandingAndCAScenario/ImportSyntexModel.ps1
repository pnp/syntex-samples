Import-Module PnP.PowerShell
Import-Module Microsoft.Online.SharePoint.PowerShell

#URL SharePoint content center site
$SiteURL = "https://xxxx.sharepoint.com/sites/ContosoContentCenter/"
#Username
$username = "admin@xxxx.onmicrosoft.com"
#Password
$password = "xxxx"


$cred = New-Object -TypeName System.Management.Automation.PSCredential -argumentlist $username , $(convertto-securestring $password -asplaintext -force)

 
#Connect to PNP Online
Connect-PnPOnline -Url $SiteURL -Credentials $cred

Invoke-PnPSiteTemplate -Path .\BenefitChangesServiceAgreement.pnp