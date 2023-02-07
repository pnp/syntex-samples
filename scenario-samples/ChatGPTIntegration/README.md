# Syntex and Chat GPT Integration App
In this scenario you will find a Power Platfomr sample document management solution that uses Microsoft Syntex Structured Document Processing and Open AI Chat GPT integration.

In this Power App you can upload a new invoice and after Syntex classification you could ask more details about all items extracted from your invoice to Open AI


Deploy today to your tenant and see a great example of the art of the possible with Power Platform, Microsoft Syntex and Open AI.


## Deployment Instruction

### Prerequisites
- A Power Platform Environment with Dataverse and with AI Builder credit
You can enable a trial for AI Builder at this link 

https://powerapps.microsoft.com/en-us/ai-builder/

<img width="567" alt="image" src="https://user-images.githubusercontent.com/22641502/216955955-ceeb67f3-b4b7-4604-ac9c-6cf175cf8e34.png">

### Create a SharePoint Document Library in your Site
In your Team or Communication SharePoint site you need to create a document library. 
Remember this name because you must set an Environment Variable with this document library name.

<img width="261" alt="image" src="https://user-images.githubusercontent.com/22641502/217096560-3e37618d-3dc5-484d-8276-5ceca62a5cdc.png">


### Create a Layout Method Model in Syntex
Open your Content Center site and create a new "Layout Model"
<img width="863" alt="image" src="https://user-images.githubusercontent.com/22641502/217096823-42282be5-b16f-4fec-96b4-cdda55052cfb.png">

Click "Next"

<img width="862" alt="image" src="https://user-images.githubusercontent.com/22641502/217096927-5ca99f1a-5364-4640-9693-220e7ea53cba.png">

Select a name and click "Create"

<img width="862" alt="image" src="https://user-images.githubusercontent.com/22641502/217097843-83d4feaa-1a87-4287-8cbd-618097705b2d.png">

#### Start to create all necessary fields
<img width="474" alt="image" src="https://user-images.githubusercontent.com/22641502/217099112-3068f7a8-2925-451f-8f70-1e63f3cc8b25.png">

1) Invoice Number
<img width="308" alt="image" src="https://user-images.githubusercontent.com/22641502/217099184-f49a7d71-5ba6-4482-b71b-8fedc8a049c6.png">

2) Invoice To
<img width="304" alt="image" src="https://user-images.githubusercontent.com/22641502/217099322-c9648494-3994-474d-aa16-f4eacd456067.png">

3) Invoice Date
<img width="306" alt="image" src="https://user-images.githubusercontent.com/22641502/217099382-f7233146-cf99-48f4-940c-373515c59e69.png">

4) Invoice Total

5) Invoice Tax
<img width="308" alt="image" src="https://user-images.githubusercontent.com/22641502/217099646-69c5ecba-f56f-44a1-b8a9-93f4009c652d.png">

6) Vendor
<img width="305" alt="image" src="https://user-images.githubusercontent.com/22641502/217099722-8479b5e7-75bb-41d2-851f-eb699b68dfdd.png">

In this moment this is the current model situation
<img width="590" alt="image" src="https://user-images.githubusercontent.com/22641502/217099809-623d62b6-f98a-4312-a5c4-148e11b3c257.png">

Now you need to create a table field for the invoice details
For the new field you need to select "Table"

<img width="239" alt="image" src="https://user-images.githubusercontent.com/22641502/217099980-14d27ca0-4cfc-47fc-a4a1-3d57cacaca82.png">

Change the table new using "Details" and add three columns with name:
- Item
- Quantity
- Amount

<img width="560" alt="image" src="https://user-images.githubusercontent.com/22641502/217100235-aa804229-111d-49ab-b62c-fe46719b4e19.png">

Click "Next"

<img width="482" alt="image" src="https://user-images.githubusercontent.com/22641502/217100371-c9cc178a-f9f7-4c5b-9c8e-d348e260ffde.png">

#### Start to create all necessary collections

Click on "New Collection"

<img width="531" alt="image" src="https://user-images.githubusercontent.com/22641502/217100547-09a2fa3f-c847-4264-86df-e96ad947cabf.png">

Rename the first collection with name "Adatum"

<img width="231" alt="image" src="https://user-images.githubusercontent.com/22641502/217100713-b407d74b-dc3f-4862-955f-3450e330e3d8.png">

Add 5 "Adatum" invoices present in the Train subfolder under "Adatum"

<img width="488" alt="image" src="https://user-images.githubusercontent.com/22641502/217100986-a652c52f-0ba7-4ae3-9905-0a9f2837d76f.png">

Select "Upload 5 documents"

<img width="593" alt="image" src="https://user-images.githubusercontent.com/22641502/217101135-66beb915-27c3-43cc-82f9-a15411cc32d7.png">

When the upload process finished press "Done"

<img width="594" alt="image" src="https://user-images.githubusercontent.com/22641502/217101297-be006dec-c539-4bf2-b8d3-9d6f426e8abb.png">

Create now a new collection "Contoso"

<img width="448" alt="image" src="https://user-images.githubusercontent.com/22641502/217101498-f3907560-7ce5-4ff0-94fc-46880d49ba52.png">

Add 5 "Contoso" invoices present in the Train subfolder under "Contoso"

<img width="496" alt="image" src="https://user-images.githubusercontent.com/22641502/217101724-987be13a-6865-40b9-abdc-2de3ff71c736.png">

Select "Upload 5 documents"

<img width="596" alt="image" src="https://user-images.githubusercontent.com/22641502/217101834-5869fd67-6589-473d-a951-1b04633de5b8.png">

When the upload process finished press "Done"

<img width="593" alt="image" src="https://user-images.githubusercontent.com/22641502/217102015-292d8bbd-6516-46fa-8894-e78ce3c0fa65.png">

Press "Next" and start to tag all documents

#### Tag Documents
Click in the first "Adatum" collection 

<img width="256" alt="image" src="https://user-images.githubusercontent.com/22641502/217102239-217737bb-a205-4f12-9503-61d900a6af5e.png">

Identify the Invoice Number and select the corresponding field

<img width="342" alt="image" src="https://user-images.githubusercontent.com/22641502/217102381-83ffa049-7488-4c9c-bfc0-0c753b045524.png">

Repeat this step for:
Invoice To

<img width="313" alt="image" src="https://user-images.githubusercontent.com/22641502/217102539-a05e4784-3673-4681-8e03-f78615cf2261.png">

Invoice Date

<img width="328" alt="image" src="https://user-images.githubusercontent.com/22641502/217102648-322d0a6d-e6e3-4fe3-8acf-7cae0126752d.png">

Invoice Total

<img width="225" alt="image" src="https://user-images.githubusercontent.com/22641502/217102725-e3c66cfd-050a-488e-8d20-7a59c2da0411.png">

Invoice Tax

<img width="247" alt="image" src="https://user-images.githubusercontent.com/22641502/217102790-c13dbe56-fa92-4bab-8456-6c3405383003.png">

Vendor

<img width="353" alt="image" src="https://user-images.githubusercontent.com/22641502/217102877-d2ff91a3-d26f-41c3-8b0b-394c1228f7f8.png">

Now you need to identify the details table in the form as showed in this picture

<img width="494" alt="image" src="https://user-images.githubusercontent.com/22641502/217103026-acc8fae9-1b3b-4312-baf3-4fb879d6a2c2.png">

On the right select "Advanced tagging mode"

<img width="895" alt="image" src="https://user-images.githubusercontent.com/22641502/217103155-7c30abba-8527-492f-b808-63b58f2da4b5.png">

This show a table on the right part

<img width="491" alt="image" src="https://user-images.githubusercontent.com/22641502/217103239-15ab96a8-6d60-4d14-a5c3-f5fffe22d2c3.png">

In the first row select the description.... and the description will be moved on the table on the right under item column

<img width="875" alt="image" src="https://user-images.githubusercontent.com/22641502/217103631-ebd7da3e-3e30-45cc-9d47-86b3b7ea80e9.png">

The same for quantity...

<img width="885" alt="image" src="https://user-images.githubusercontent.com/22641502/217103727-21c4d12a-512a-4b12-a1dc-80dbe715a281.png">

Also for line total that will be moved under Amount

<img width="878" alt="image" src="https://user-images.githubusercontent.com/22641502/217103846-e135a566-b65e-4414-b14c-9bbc43df5689.png">

Repeat these steps for all other rows and click "Done"

<img width="887" alt="image" src="https://user-images.githubusercontent.com/22641502/217104086-2c28dc4e-7f49-44ac-bd80-3a037d17713b.png">

Go to the second document and repeat all steps above

<img width="878" alt="image" src="https://user-images.githubusercontent.com/22641502/217217713-e3f53c7a-0e75-4353-b6ba-66b0dced9421.png">

The same for all other 3 Adatum invoices...

<img width="257" alt="image" src="https://user-images.githubusercontent.com/22641502/217218823-1aa74cc7-1323-4bd4-9e7a-d646cb589faa.png">

Now you can start to tag all "Contoso invoices"

1) Invoice Number
<img width="291" alt="image" src="https://user-images.githubusercontent.com/22641502/217219048-693ef431-206b-4dee-88e0-6e70173b9c68.png">

2) Invoice To
<img width="492" alt="image" src="https://user-images.githubusercontent.com/22641502/217219174-ff27b0ce-c4b8-4015-89e2-ab1afd10b437.png">

3) Vendor
<img width="248" alt="image" src="https://user-images.githubusercontent.com/22641502/217219343-bac027ec-b1de-4506-aee5-0b91a531195f.png">

4) Invoice Total
<img width="266" alt="image" src="https://user-images.githubusercontent.com/22641502/217219414-33db931d-bfa6-4c7c-9f1a-3025d9100266.png">

5) Invoice Tax
<img width="263" alt="image" src="https://user-images.githubusercontent.com/22641502/217219532-0f97e898-8c2e-47b3-a8c0-2ab1b1c61ebe.png">

6) Invoice Date
<img width="306" alt="image" src="https://user-images.githubusercontent.com/22641502/217219667-001a9c11-90b2-4f5b-b666-8f970e56c505.png">

Now you need to identify the details table in the form as showed in this picture

<img width="513" alt="image" src="https://user-images.githubusercontent.com/22641502/217219811-26d7b6bc-e7cf-4b8e-928e-83b09397ae67.png">

Select the description to insert the value in the Item column

<img width="887" alt="image" src="https://user-images.githubusercontent.com/22641502/217220073-ed16234e-0f0f-4a83-bc2d-72ef325cdcb9.png">

The same for quantity

<img width="874" alt="image" src="https://user-images.githubusercontent.com/22641502/217220227-386a4d15-148a-4767-a083-6cd89fbdac61.png">

The same for amount

<img width="878" alt="image" src="https://user-images.githubusercontent.com/22641502/217220298-aa7bfe33-3f47-4299-bf9e-f0adccdcc0d7.png">

Repeat all steps for other rows

<img width="886" alt="image" src="https://user-images.githubusercontent.com/22641502/217220536-b2b4409b-c096-41d8-b958-08a9c8b517a7.png">

Click "Done" to switch to the second document... Repeat all steps above

<img width="885" alt="image" src="https://user-images.githubusercontent.com/22641502/217220970-1fb0d865-eabc-48b9-a382-af887ebfcae6.png">

The same for all other 3 documents...
When you finished click "Next" to review the model

<img width="985" alt="image" src="https://user-images.githubusercontent.com/22641502/217232861-a1c0b23c-0aa0-4552-b4c8-94fa513d3bf2.png">

Now Train the model...

<img width="805" alt="image" src="https://user-images.githubusercontent.com/22641502/217232930-76003480-ee1a-4e75-a4f2-67fd0d76d166.png">

<img width="388" alt="image" src="https://user-images.githubusercontent.com/22641502/217232968-9f9a7e2c-6e2d-4f7f-ba7c-5c828331ef29.png">

<img width="389" alt="image" src="https://user-images.githubusercontent.com/22641502/217233020-c755c531-0805-44da-ae17-54dd0fc8e79c.png">

In the Content Center wait that training is finished...

<img width="1188" alt="image" src="https://user-images.githubusercontent.com/22641502/217233206-1e93afac-1094-40e0-a02e-95cec59cce6f.png">

Click "Publish" to publish the model

<img width="1193" alt="image" src="https://user-images.githubusercontent.com/22641502/217233293-0d15de12-8d4a-40a6-bcfd-57d884bc39ea.png">

#### Apply Model to a SharePoint Document Library
Choose the document library created before for associate the model

<img width="1183" alt="image" src="https://user-images.githubusercontent.com/22641502/217233730-452c9e63-c24e-45e4-9d79-c6a94dbdbbc3.png">

<img width="254" alt="image" src="https://user-images.githubusercontent.com/22641502/217233816-c46cd49b-fb87-4f29-a65b-5dbc6e93bb07.png">

Create a related list for save all details line

<img width="248" alt="image" src="https://user-images.githubusercontent.com/22641502/217265931-1035b453-0c1b-4290-9fb4-379c0a7eba91.png">

Select your preferred view

<img width="251" alt="image" src="https://user-images.githubusercontent.com/22641502/217233983-ce065d05-3117-4d31-bb26-62db77e0baae.png">

### Install Power Platform Solution






















