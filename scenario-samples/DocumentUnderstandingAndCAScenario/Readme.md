# Document Understanding and Content Assembly Scenario 

In this scenario you can find a sample document management solution that use both Document Understanding and Content Assembly Syntex features. 
At the moment more steps are manually (for example import CA modern template) but in the near future could be possible automate all process using API or new Powershell command.

# Deployment Instructions
Before starting, download all content in a single folder in your file system.

This deploy use PnP powershell module to create SharePoint online structures and deploy Syntex model in your content center.
To enable PnP powershell in your tenant follow this [link](https://www.agrenpoint.com/pnp-powershell-consent-and-authentication/).

## Import Model in your Content Center
As first step you need to import “BenefitChangesServiceAgreement.pnp” model in your Content Center site.
To do this you can use ImportSyntexModel.ps1 script.
Open the ps1 file with an editor and insert correct URL, username and password 
![image](https://user-images.githubusercontent.com/22641502/201053019-9ae7051c-089a-4d9e-923c-c80c62c11cb6.png)

Save and execute the script.
After this you can find in your content center the new model
![image](https://user-images.githubusercontent.com/22641502/201053145-8770ff6d-d709-43d1-b79d-9db685185774.png)

## Create SharePoint Structures
Now you must create SPO structure in your target SharePoint site (could be a standard Team Site)
-	Contract Management Hub document library
-	Service Agreement document library
-	Associate Syntex model to Contract Management Hub
To do this you can user DeployContent.ps1 script.
Open the ps1 file with an editor and insert correct URL Content Center Site, URL Targer Site, Username and Password
![image](https://user-images.githubusercontent.com/22641502/201060748-3e73cbba-526f-43bc-bc49-cb70a9a6e8ac.png)

Save and execute the script.

## Create Modern Template in "Service Agreement" document library
1.	Create Modern Template
  Access to “Service Agreement” document library in your target site. 
  Select "+ New" -> "Create Modern Template"
  ![image](https://user-images.githubusercontent.com/22641502/201061164-8c66e0b7-6e0e-443a-b972-50680076980c.png)

2.  Select “Service Agreement Contract.docx” as Template
  ![image](https://user-images.githubusercontent.com/22641502/201061372-bf049a42-88a8-4f81-87a9-828f09ae70e3.png)

3.  Create Fields
  You need to create 3 fields in your template
  -	Employee Name
  -	Change Date
  -	Discount
  This will be the final result:
  
  ![image](https://user-images.githubusercontent.com/22641502/201061673-3e07fd64-0e7c-48a5-a0f1-8a37f3cd3d3b.png)

  Create “Employee Name” field.
  Click on “+ New field”
  As Name type “Employee Name”
  Select “Enrico Cattaneo” in the document text and “Confirm”

  ![image](https://user-images.githubusercontent.com/22641502/201061866-48fcc30c-8041-44cf-82b8-2c6af4a59c73.png)

  Press “Next” button
  
  ![image](https://user-images.githubusercontent.com/22641502/201061963-6a719381-52de-4167-baea-e3ec1d10f08f.png)

  Select “Single line of text” and press “Save” button
  
  ![image](https://user-images.githubusercontent.com/22641502/201062059-80d97a2f-2f8a-46d0-b502-f8c6e0c99dbb.png)

  Click “+ New field” to create “Change Date” field
  ![image](https://user-images.githubusercontent.com/22641502/201062228-632ec664-6e0d-4ff5-b538-eea031df397e.png)

  ![image](https://user-images.githubusercontent.com/22641502/201062355-6f8a3bb0-8114-4851-b361-4130368ff032.png)

  Select “September 15, 2017” in document text.
  Press “Confirm” button…
  Select “Date and time” as type
  ![image](https://user-images.githubusercontent.com/22641502/201062474-3952bab8-8adb-435f-b3b4-c397375b7b62.png)
  Press “Save” button…

  Click “+ New field” to create “Discount” field
  ![image](https://user-images.githubusercontent.com/22641502/201062810-a4d3b824-8d81-4a63-96a4-a4ce2ddb67b7.png)

  Select “8” in document text.
  ![image](https://user-images.githubusercontent.com/22641502/201062869-cae1755e-077e-429d-b398-d595a743f0c7.png)

  Press “Confirm” button…
  Select “Number” as type
  ![image](https://user-images.githubusercontent.com/22641502/201062958-50e34311-5583-4c46-8ddc-d4cafd388898.png)

4.	Publish Template

  Press “Publish” button.
  ![image](https://user-images.githubusercontent.com/22641502/201063102-5a5dc74e-82bb-44a2-95b5-6c9a294acded.png)

  Not change the template name and press “Publish” button another time
  ![image](https://user-images.githubusercontent.com/22641502/201063196-1be53273-1d7b-4fe7-88c4-0b50fb72c61c.png)

  ![image](https://user-images.githubusercontent.com/22641502/201063271-0ac9106e-22db-4658-a3e6-a245d160abac.png)

5.	Check Result
  Now “Service Agreement Contract” template is now available in “Service Agreement” document library
  ![image](https://user-images.githubusercontent.com/22641502/201063446-2938d950-b215-4826-be22-77ff85cde5cd.png)

## Import Power Platform Solution
In this step you need to import DocManagementMicrosoftSyntex_1_0_0_8.zip as solution in your Power Platform Environment.
To do this remember that you need an Environment with Dataverse.

1.	Import Solution
  In your Power Platform Environment under “Solution” section, click “Import Solution”
  
  ![image](https://user-images.githubusercontent.com/22641502/201064284-ed2bd90c-3109-4319-aadc-31b9c8f88c07.png)

2.	Select “DocManagementMicrosoftSyntex_1_0_0_8.zip”
  Select  zip file and click “Next”
  ![image](https://user-images.githubusercontent.com/22641502/201064393-23a8c41a-122c-448c-8204-37a9193a3d10.png)

  Import this solution as “Unmanaged” because you need to change same settings and configuration after the import 
  
  ![image](https://user-images.githubusercontent.com/22641502/201064480-cd7bf2b1-040b-4666-97b5-c893dec0b86e.png)

3.	Configuring SharePoint settings (connection and url)
  Now you must select a valid SharePoint connection. If you don’t have a valid connection the wizard will help you to create a SPO connection
  
  ![image](https://user-images.githubusercontent.com/22641502/201064659-eecee260-39a7-4be6-98b2-bb4bf26cffdb.png)

  ![image](https://user-images.githubusercontent.com/22641502/201064755-dd58394b-f74b-41ee-99cf-8b2ca68e6e3b.png)

  Click “Next”
  Now you are able to select the correct SharePoint site URL and the “Contract Management Hub” document library
  ![image](https://user-images.githubusercontent.com/22641502/201064874-49fa76ec-f459-461d-9fa7-0165ef9d7c95.png)

  Click “Import” 
  ![image](https://user-images.githubusercontent.com/22641502/201064988-5c483e2f-af90-4dcd-8f39-3bd253ec27fb.png)

  Wait the process finish to import the solution.
  ![image](https://user-images.githubusercontent.com/22641502/201065021-cb2a4a6c-c135-42a6-b00c-9fed1d6c33d6.png)

## Modify Environment Variables
Click on Solution to see all details
![image](https://user-images.githubusercontent.com/22641502/201065305-fccb936c-ddbb-4856-b5cc-119be38f0175.png)

1.	Modify “SharePointSiteURL” variable
  Edit the env variable “SharePointSiteURL”
  ![image](https://user-images.githubusercontent.com/22641502/201065402-9b2969e4-a2c6-46b1-a351-f27fa6eaa89f.png)

  Under “Current Site Value” click on “+ Add existing”
  ![image](https://user-images.githubusercontent.com/22641502/201065493-132953f2-c271-46ce-90b5-0517f163f4a7.png)

  Select SPO target site for deployment
  ![image](https://user-images.githubusercontent.com/22641502/201065579-0ebc4c25-61c9-4364-a567-adb0f94e69f6.png)

  Press “Save” button.
  
2.	Modify “Contract Management Library Name” variable
  Edit the env variable "Contract Management Library Name"
  ![image](https://user-images.githubusercontent.com/22641502/201065809-e94e5494-1d60-4300-bac8-bdc7a14ad197.png)

  Under “Current List Value” section click on “+ Add existing”
  ![image](https://user-images.githubusercontent.com/22641502/201065946-c3e562e2-7ad2-4275-86ff-44f51f99aac1.png)

  Select “Contact Management Hub” and click “Save”
  ![image](https://user-images.githubusercontent.com/22641502/201066054-a5a5bae4-da5f-4452-a086-44c37b074692.png)

## Modify “GenerateServiceAgreement” flow
Edit the flow "GenerateServiceAgreement" in “New Tab”
![image](https://user-images.githubusercontent.com/22641502/201066296-642a975c-4bc7-45bd-be31-dcd2c84bd32d.png)

This is the flow...
![image](https://user-images.githubusercontent.com/22641502/201066377-25afede6-3d3e-415d-b9fe-27f216809cfd.png)

1.  Modify action “Generate document using SharePoint Syntex (preview)”
  Because you have created “Modern Template” manually you must change the reference in this action
  ![image](https://user-images.githubusercontent.com/22641502/201066532-500bd687-acd1-4263-95f4-2acdbf7a1928.png)

  Delete “Document Template” field.
  ![image](https://user-images.githubusercontent.com/22641502/201066649-7f5f483e-2669-4041-ac8f-a69a01218812.png)

  Delete “Document Library” field
  ![image](https://user-images.githubusercontent.com/22641502/201066752-789fb3d5-2e52-4cb4-8cb8-176555bbe97a.png)

  Now PowerAutomate enable you to set the correct values
  In “Document Library Name” field select “Service Agreement”
  ![image](https://user-images.githubusercontent.com/22641502/201066846-cb845bf5-3aed-4ed8-b0f6-cc87f91163b0.png)

  In “Document Template” field select “Service Agreement Contract”
  ![image](https://user-images.githubusercontent.com/22641502/201066932-3c37af67-dfbb-4acd-be54-261eb5cf30da.png)
  
2.  Change all fields references
  Now you must change the fields references
  ![image](https://user-images.githubusercontent.com/22641502/201067195-ab974d1b-c39e-4d02-bf91-691e707a64be.png)

  First you remove “item/xxxx” values, after this add the correct values to the fields
  o	Change Date -> Change Date
  o	Discount -> Change Fee
  o	Employee Name -> Employee Name
  
  ![image](https://user-images.githubusercontent.com/22641502/201067329-a0448e27-3d53-4c14-a1ff-67824246c009.png)

  Save the flow.
 
3.	Check flow is “Turn on”
  If the flow is “Turn off” enable it using “Turn On” button
  ![image](https://user-images.githubusercontent.com/22641502/201067465-e52399b3-f48e-4c55-9952-f42ffdeb85fd.png)

# Test the app
Now you are ready to test Power App and Flows that simulate a document management process.

1. Play “ManageDocument” App
  ![image](https://user-images.githubusercontent.com/22641502/201067833-7fce298a-50e4-4016-989b-78cdcadb578e.png)

2. Click on “Attach file” and select “Contract_Change_WWI_4.docx”
  ![image](https://user-images.githubusercontent.com/22641502/201067944-999d36ff-0aed-4d5f-82ea-99f85fac02ee.png)

3.  Press "Upload" button
  ![image](https://user-images.githubusercontent.com/22641502/201068067-1cd8650d-03ae-43a3-801e-703b392d6a14.png)

  and wait the notification message
  ![image](https://user-images.githubusercontent.com/22641502/201068152-15afa81b-d747-4715-a224-40ec0517572e.png)

  The upload process is powered by "UploadContract" flow that you can find under solution.
 
4. If you use the refresh icon you can check when Syntex classify your document
5. At the end you can see information details extracted by Syntex in form detail
    ![image](https://user-images.githubusercontent.com/22641502/201068674-77e19ad8-24a7-4da5-bb73-37707b7b5349.png)

6.	When the flow “GenerateServiceAgreement” is finished you can click the icon to see the document create using “Modern Template”
  ![image](https://user-images.githubusercontent.com/22641502/201068800-6542de62-f204-4ad1-96d6-118209c1ef0c.png)

  













  






  



