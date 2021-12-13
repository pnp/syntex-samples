# Services Agreement

## Summary

This PnP template contains a SharePoint Syntex Document Understanding model used to classify Services Agreements.

The sample features the following:

- Classifier
- 5 extractors
- 7 training files (6 positive examples, 1 negative examples)

The extractors in this model are:

Extractor Name|Explanation Count|Types
--------------|-----------------|-----------------
Client|2|Phrase List
Contractor|1|Phrase List
Fee Amount|1|Phrase List
Contract Services|2|Phrase List
Agreement Date|2|Phrase List

## Using the model

To use the model in your tenant you must have access to a Content Center.

To upload the model, apply the PnP site template to a content center using [PnP PowerShell](https://pnp.github.io/powershell/):

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\ServicesAgreement.pnp
```

## Sample

Solution|Author(s)
--------|---------
AviationIncidentReport.pnp | [Leon Armston](https://github.com/LeonArmston)

## Version history

Version|Date|Comments
-------|----|--------
1.0|May 11, 2021 |Initial release

## Disclaimer

**THIS CODE IS PROVIDED *AS IS* WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.**

---
<img src="https://telemetry.sharepointpnp.com/syntex-samples/samples/Services Agreement" />
