# Contract Notice

## Summary

This PnP template contains a Microsoft Syntex unstructured document Processing model used to classify Contract Notices.

![Contract Notice Example](assets/training-file-example.png)

The sample features the following:

- Classifier
- 5 extractors
- 22 training files (20 positive examples, 2 negative examples)

The extractors in this model are:

Extractor Name|Explanation Count|Types
--------------|-----------------|-----------------
Company Name|2|Phrase List
Plan Type|1|Phrase List
Start Date|1|Phrase List
Member Count|1|Phrase List
Trials|1|Phrase List

## Using the model

To use the model in your tenant you must have access to a Content Center.

To upload the model, apply the PnP site template to a content center using [PnP PowerShell](https://pnp.github.io/powershell/):

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\ContractNotice.pnp
```

## Sample

You can find the model source code including training files here: [/models/Contract-Notice](https://github.com/pnp/syntex-samples/tree/main/models/Contract-Notice)

Solution|Author(s)
--------|---------
ContractNotice.pnp | [James Eccles](https://github.com/JamesEccles)

## Version history

Version|Date|Comments
-------|----|--------
1.0|May 11, 2021 |Initial release

## Disclaimer

**THIS CODE IS PROVIDED *AS IS* WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.**

---
<img src="https://pnptelemetry.azurewebsites.net/syntex-samples/models/Contract-Notice" />
