# Aviation Incident Report

## Summary

This PnP template contains a SharePoint Syntex Document Understanding model used to classify Aviation Incident Reports.

The sample features the following:

- Classifier
- 5 extractors
- 14 training files (12 positive examples, 2 negative examples)

The extractors in this model are:

Extractor Name|Explanation Count|Types
--------------|-----------------|-----------------
Incident Date|4|Phrase List
Flight Number|3|Phrase List, Regular Expression
Incident ICAO Code|3|Phrase List, Proximity
Airline|3|Phrase List
Aeroplane Manufacturer|4|Phrase List

## Using the model

To use the model in your tenant you must have access to a Content Center.

To upload the model, apply the PnP site template to a content center using [PnP PowerShell](https://pnp.github.io/powershell/):

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\AviationIncidentReport.pnp
```

## Sample

Solution|Author(s)
--------|---------
AviationIncidentReport.pnp | [Leon Armston](https://github.com/LeonArmston)

## Version history

Version|Date|Comments
-------|----|--------
2.0|Apr 26, 2022 |Updated tidied up extractors & classifier
1.0|Dec 06, 2021 |Initial release

## Disclaimer

**THIS CODE IS PROVIDED *AS IS* WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.**

---
<img src="https://telemetry.sharepointpnp.com/syntex-samples/samples/Aviation Incident Report" />
