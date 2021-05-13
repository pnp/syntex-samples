# Microsoft SharePoint Syntex Samples

This repository contains community samples that demonstrate different usage patterns of Document Understanding models in Microsoft SharePoint Syntex.

> We do welcome community contributions (e.g. Syntex Document Understanding models) to the samples folder in this repository. Note that if you use contribute a model, please make sure that the training data submitted with your model can be publicly shared.

## Have issues or questions?

Please use following logic on submitting your questions or issues to right location to ensure that they are noticed and addressed as soon as possible.

* You have issue on specific sample - use [issue list in this repository](https://github.com/pnp/syntex-samples/issues).

## Additional resources

* [Microsoft SharePoint Syntex overview](https://www.microsoft.com/en-ww/microsoft-365/enterprise/sharepoint-syntex-overview)
* [Introduction to Microsoft SharePoint Syntex](https://docs.microsoft.com/en-us/microsoft-365/contentunderstanding/)

## Using the samples

The samples in this repository contain both the Document Understanding model files, as well as the files used to train the model. Once imported, you will be able to use these models to process files, as well as view and edit the key model elements- the classifier and extractors.

Samples are provided as PnP template, that should be imported to a Content Center site. 

For example, this can be done using PowerShell

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\sampleModel.pnp
```

See the [Exporting Models](https://github.com/pnp/syntex-samples/tree/main/docs/Exporting-Models.md) article for guidance on how to export Document Understanding models. 

## Authors
This repository's contributors are all community members who volunteered their time to share code samples. Work is done as an open source community project, which each sample contained in their own solution.

## Contributions

These samples are direct from the feature teams, PnP core team (http://aka.ms/m365pnp) or shared by the community. We welcome your input on issues and suggestions for new samples. If you have any questions, just let us know.

Please have a look on our [Contribution Guidance](./.github/CONTRIBUTING.md) before submitting your pull requests, so that we can get your contribution processed as fast as possible.

## Code of Conduct
This repository has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Disclaimer

**THESE SAMPLES ARE PROVIDED *AS IS* WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.**

> Sharing is caring!
