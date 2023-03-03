# Microsoft Syntex Samples

This repository contains community samples that demonstrate different usage patterns of unstructured document processing models (formerly known as document understanding models) in Microsoft Syntex.

> We welcome community contributions (e.g. Syntex unstructured document processing models) to the models folder in this repository. Note that if you contribute a model, please make sure that the training data submitted with your model can be publicly shared.

> **NOTE:** Unfortunately at this time other Syntex document processing model types such as structured or freeform cannot be exported to a PnP template. So these cannot be shared in this repository. 

## Have issues or questions?

Please use following logic on submitting your questions or issues to right location to ensure that they are noticed and addressed as soon as possible.

* You have issue on specific sample - use [issue list in this repository](https://github.com/pnp/syntex-samples/issues).
* If you have any Syntex questions - use [discussions in this repository](https://github.com/pnp/syntex-samples/discussions).

## Additional resources

* [Microsoft Syntex overview](https://aka.ms/Syntex)
* [Introduction to Microsoft Syntex](https://learn.microsoft.com/en-us/microsoft-365/contentunderstanding/)
* [Microsoft Syntex adoption guide](https://adoption.microsoft.com/en-us/syntex/adoption/)
* [SharePoint Lookbook - Syntex designs now available](https://lookbook.microsoft.com/)
* [Microsoft Syntex - filtered view of the M365 roadmap](https://aka.ms/SyntexRoadmap)
* [Microsoft Syntex feedback portal](https://aka.ms/Syntex/Feedback)
* [Microsoft Learn - Syntex modules](https://docs.microsoft.com/en-us/learn/paths/syntex-get-started)

## Using the samples

The samples in this repository contain both the unstructured document processing model files, as well as the files used to train the model. Once imported, you will be able to use these models to process files, as well as view and edit the key model elements - the classifier and extractors.

Samples are provided as PnP template, that should be imported to a Content Center site.

For example, this can be done using [PnP PowerShell](https://pnp.github.io/powershell/):

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\sampleModel.pnp
```

See the [Exporting Models](articles/Exporting-Models.md) article for guidance on how to export unstructured document processing models.

Once a model has been imported in your Syntex Content Center site you can review and update it to match your needs. If you want to further deploy the model then checkout the [Deploying Models](articles/Deploying-Models.md) article to learn more.

## Authors

This repository's contributors are all community members who volunteered their time to share code samples. Work is done as an open source community project, which each sample contained in their own solution.

## Contributions

These samples are direct from the feature teams, PnP core team (http://aka.ms/m365pnp) or shared by the community. We welcome your input on issues and suggestions for new samples. If you have any questions, just let us know.

## Code of Conduct

This repository has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Disclaimer

**THESE SAMPLES ARE PROVIDED *AS IS* WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.**

> Sharing is caring!

<img src="https://pnptelemetry.azurewebsites.net/syntex-samples/readme"/>
