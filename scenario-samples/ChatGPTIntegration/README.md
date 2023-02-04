# Syntex and Chat GPT Integration App
In this scenario you will find a Power Platfomr sample document management solution that uses Microsoft Syntex Structured Document Processing and Open AI Chat GPT integration.

In this Power App you can upload a new invoice and after Syntex classification you could ask more details about all items extracted from your invoice to Open AI


Deploy today to your tenant and see a great example of the art of the possible with Power Platform, Microsoft Syntex and Open AI.


## Deployment Instruction

### Import Syntex Model into your Syntex content center
The first step is to import the Syntex model template named BenefitChangesServiceAgreement.pnp into your Syntex Content Center.

To do this run ImportSyntexModel.ps1 PowerShell script.

Before running the PowerShell script open the file with your preferred editor and update:
- Variable **$ContentCenterURL** to be the url of your Syntex content center.

![image](https://user-images.githubusercontent.com/22641502/216779101-dda29d8c-0100-488a-8bf3-57c841d8a0bd.png)

Save and execute the script.

After this you will find in your Syntex content center that the new model has been deployed.

