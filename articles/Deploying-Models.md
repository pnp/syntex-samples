# Deploying Microsoft Syntex Models

Microsoft Syntex Models typically are deployed to document libraries across your tenant. This can be done by using the Content Center site, but this can also be done using [PnP PowerShell](https://pnp.github.io/powershell/) as explained in this article. If you want to work with Microsoft Syntex models via code then check out the [Working with Microsoft Syntex](https://pnp.github.io/pnpcore/using-the-sdk/syntex-intro.html) support for [PnP Core SDK](https://aka.ms/pnp/coresdk).

## Listing the available models in a Content Center

To get an overview of the models added to the current Microsoft Syntex Content Center site use the [Get-PnPSyntexModel](https://pnp.github.io/powershell/cmdlets/Get-PnPSyntexModel.html) cmdlet:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"
Get-PnPSyntexModel
```

## Deploying a given model to a library

To deploy a model to a library you can use [Publish-PnPSyntexModel](https://pnp.github.io/powershell/cmdlets/Publish-PnPSyntexModel.html) cmdlet:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"
Publish-PnPSyntexModel -Model "Contract Notice" -ListWebUrl "https://contoso.sharepoint.com/sites/finance" -List "Documents"
```

Above sample deployed the "Contract Notice" model a single document library but if you need to deploy a model to many libraries it's more efficient to use to built-in batch feature:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

# Create a new batch
$batch = New-PnPBatch

# Add model deployments to the batch
Publish-PnPSyntexModel -Model "Contract Notice" -TargetSiteUrl "https://contoso.sharepoint.com/sites/finance" -TargetWebServerRelativeUrl "/sites/finance" -TargetLibraryServerRelativeUrl "/sites/finance/shared%20documents" -Batch $batch
Publish-PnPSyntexModel -Model "Contract Notice" -TargetSiteUrl "https://contoso.sharepoint.com/sites/crm" -TargetWebServerRelativeUrl "/sites/crm" -TargetLibraryServerRelativeUrl "/sites/crm/shared%20documents" -Batch $batch
Publish-PnPSyntexModel -Model "Contract Notice" -TargetSiteUrl "https://contoso.sharepoint.com/sites/finance" -TargetWebServerRelativeUrl "/sites/finance/belgium" -TargetLibraryServerRelativeUrl "/sites/finance/belgium/shared%20documents" -Batch 
Publish-PnPSyntexModel -Model "Contract Notice" -TargetSiteUrl "https://contoso.sharepoint.com/sites/finance" -TargetWebServerRelativeUrl "/sites/finance/uk" -TargetLibraryServerRelativeUrl "/sites/finance/uk/shared%20documents" -Batch $batch

# Execute batch
Invoke-PnPBatch -Batch $batch
```

## Un-publishing a model from a library

Un-publishing follows the same pattern as publishing and can be done using the [Unpublish-PnPSyntexModel](https://pnp.github.io/powershell/cmdlets/Unpublish-PnPSyntexModel.html) cmdlet either interactively or as batch of multiple un-publish actions.

## Understanding where a model is used

Once you've deployed a model to many libraries you might want to review the list of libraries using your model. This can be done using the [Get-PnPSyntexModelPublication](https://pnp.github.io/powershell/cmdlets/Get-PnPSyntexModelPublication.html) cmdlet:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"
Get-PnPSyntexModelPublication -Identity "Contract Notice"
```

## Processing existing data in a library

Imagine the scenario where you've applied a content understanding model to an existing library: from that point on any newly added content is processed via the content understanding model...but existing content is not. To process existing content you can select the file and use the user interface, but you can also use the [Request-PnPSyntexClassifyAndExtract](https://pnp.github.io/powershell/cmdlets/Request-PnPSyntexClassifyAndExtract.html) cmdlet:

```PowerShell
#Note: you're connecting here to the site that holds the document library you want to process
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/finance"

Request-PnPSyntexClassifyAndExtract -List "Documents"
```

The above approach will classify all the the files in the site which where never classified by the model, using `-force` you can get all files processed again. You can also opt to classify file by file:

```PowerShell
#Note: you're connecting here to the site that holds the document library you want to process
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/finance"

Request-PnPSyntexClassifyAndExtract -FileUrl "/sites/finance/documents/contoso contract.docx"
```

The file by file model also supports batching:

```PowerShell
#Note: you're connecting here to the site that holds the document library you want to process
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/finance"

# Create a new batch
$batch = New-PnPBatch

# Add file classify to the batch
Request-PnPSyntexClassifyAndExtract -FileUrl "/sites/finance/documents/contoso contract.docx" -Batch $batch
Request-PnPSyntexClassifyAndExtract -FileUrl "/sites/finance/documents/relecloud contract.docx" -Batch $batch

# Execute batch
Invoke-PnPBatch -Batch $batch
```

<img src="https://pnptelemetry.azurewebsites.net/syntex-samples/docs/deploying models" />
