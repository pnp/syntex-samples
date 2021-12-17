# Purchase Orders

## Summary

This PnP template contains a SharePoint Syntex Document Understanding model used to classify Purchase Orders.

The sample features the following:

- Classifier
- 8 extractors
- 14 training files (12 positive examples, 2 negative examples)

The extractors in this model are:

Extractor Name|Explanation Count|Types
--------------|-----------------|-----------------
PO Number|2|Phrase List
Subtotal|2|Phrase List
Tax|1|Phrase List
Ship/Ins|1|Phrase List
Handling|1|Phrase List
PO Total|3|Phrase List
Vendor|2|Phrase List
PO Date|2|Phrase List

## Using the model

To use the model in your tenant you must have access to a Content Center.

To upload the model, apply the PnP site template to a content center using [PnP PowerShell](https://pnp.github.io/powershell/):

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\PurchaseOrder.pnp
```

## Sample

Solution|Author(s)
--------|---------
PurchaseOrder.pnp | [James Eccles](https://github.com/JamesEccles)

## Version history

Version|Date|Comments
-------|----|--------
1.0|September 10, 2021 |Initial release

## Disclaimer

**THIS CODE IS PROVIDED *AS IS* WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.**

---
<img src="https://telemetry.sharepointpnp.com/syntex-samples/samples/Purchase Order" />
