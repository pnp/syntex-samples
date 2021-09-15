# Contract Notice

## Summary

This PnP template contains a SharePoint Syntex Document Understanding model used to classify Contract Notices.

The sample features the following:

- Classifier
- 5 extractors
- 22 training files (20 positive examples, 2 negative examples)

The extractors in this model are:

Extractor Name|Explanation Count
--------------|-----------------
Company Name|2
Plan Type|1
Start Date|1
Member Count|1
Trials|1

## Using the model

To use the model in your tenant you must have access to a Content Center.

To upload the model, apply the PnP site template to a content center using [PnP PowerShell](https://pnp.github.io/powershell/):

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\ContractNotice.pnp
```

## Version history

Version|Date|Comments
-------|----|--------
1.0|May 11, 2021 |Initial release

## Disclaimer

**THIS CODE IS PROVIDED *AS IS* WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.**

---
