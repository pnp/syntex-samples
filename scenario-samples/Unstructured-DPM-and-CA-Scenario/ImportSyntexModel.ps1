#URL SharePoint content center site
$ContentCenterURL = "https://contoso.sharepoint.com/sites/ContosoContentCenter/"
 
#Connect to PNP Online
Connect-PnPOnline -Url $ContentCenterURL

Invoke-PnPSiteTemplate -Path .\BenefitChangesServiceAgreement.pnp