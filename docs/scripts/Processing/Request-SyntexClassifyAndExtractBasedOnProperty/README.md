# Request file processing based on status of a metadata field

## Summary

When a document understanding model is applied to alibrary, new files are classified at the time of upload. It is also possible to request on-demand processing. This could be for scenarios such as when the model has been updated, or the file modified. Using the library user interface it is possible to request processing for selected items, or for a folder's content. Through PowerShell it is possible to make the same requests, as well as processing an entire library.

This sample shows how to request processing for files that have a certain value. For example, this could be for files where a column called "Status" is set as "Active". It could also be used to run a model against files where metadata has not been entered or extracted previously.

## Sample

Solution|Author(s)
--------|---------
Request-SyntexClassifyAndExtractBasedOnProperty.ps1 | [James Eccles](https://github.com/JamesEccles)

## Version history

Version|Date|Comments
-------|----|--------
1.0|Jan 14, 2022 |Initial release

## Disclaimer

**THIS CODE IS PROVIDED *AS IS* WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.**

<img src="https://telemetry.sharepointpnp.com/syntex-samples/scripts/Request-SyntexClassifyAndExtractBasedOnProperty" />
