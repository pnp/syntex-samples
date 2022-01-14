# This script assumes you've installed a recent version of PnP PowerShell
#
# To install PnP PowerShell:
# Install-Module -Name PnP.PowerShell
#
# After initial installation you will need to setup an Azure AD application to authenticate. See https://pnp.github.io/powershell/articles/authentication.html
# for the details or use below:
# Register-PnPManagementShellAccess
#
# To upgrade to the latest release:
# Update-Module -Name PnP.PowerShell

<#
.SYNOPSIS
Installs the Syntex Content Center template in your tenant.
.EXAMPLE
PS C:\> .\Deploy-Template.ps1 -TenantUrl https://contoso.sharepoint.com
.EXAMPLE
PS C:\> .\Deploy-Template.ps1 -TenantUrl https://contoso.sharepoint.com -SiteUrl "/sites/syntexcontentcenterdemo"
#>

[CmdletBinding()]
param
(
    [Parameter(Mandatory = $true, HelpMessage="Url of your tenant (e.g. https://contoso.sharepoint.com)")]
    [string] $TenantUrl,
    [Parameter(Mandatory = $false, HelpMessage="Site relative url for the site to create (defaults to /sites/SyntexContentCenter)")]
    [string] $SiteUrl
)

# Connect to the root site of the tenant
Connect-PnPOnline -Url $TenantUrl  -Interactive

#endregion #-Interactive -cre

# Get current user's username
$user = (Get-PnPConnection).PScredential.UserName

# Apply the template
if ($SiteUrl -eq $null -or $SiteUrl -eq "")
{
    $SiteUrl = "/sites/SyntexContentCenter"
}

Write-Host "Check if Content Center site exists - if not create new Content Center"
# Check if Content Center site exists
$checksite = Get-PnPTenantSite -Identity "$TenantUrl$SiteUrl" -ErrorAction SilentlyContinue
if (!$checksite) {
    Write-Host "Creating new content centre $TenantUrl$SiteUrl" -ForegroundColor Red
    New-PnPTenantSite -Template 'CONTENTCTR#0' -Title "Syntex Content Center" -Url "$TenantUrl$SiteUrl" -Owner $user -Lcid 1033 -TimeZone 2 -Wait
}
else {
    Write-Host "Site already created: $TenantUrl$SiteUrl" -ForegroundColor Green
}

# Connect to Content Centre
Connect-PnPOnline -Url "$TenantUrl$SiteUrl" -Interactive
Invoke-PnPTenantTemplate -Path .\ContentCenter.pnp -Parameters @{"SiteUrl"=$SiteUrl} -ClearNavigation
