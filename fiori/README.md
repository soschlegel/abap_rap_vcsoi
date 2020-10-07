## Application Details
|               |
| ------------- |
|**Generation Date and Time**<br>Mon Sep 28 2020 13:31:36 GMT+0200 (Mitteleuropäische Sommerzeit)|
|**App Generator Version**<br>1.0.17|
|**Generation Platform**<br>Visual Studio Code|
|**Template Used**<br>Worklist|
|**Service Type**<br>SAP System (ABAP On Premise)|
|**Service URL**<br>https://saprs4.cnsint.de:8100/sap/opu/odata/sap/ZCON_SB_VCSOI/|
|**Main Entity**<br>SalesOrderItem|
|**Navigation Entity**<br>to_ScheduleLine|
|**Module Name**<br>vako|
|**Application Title**<br>VAKO|
|**Namespace**<br>|
|**UI5 Theme**<br>sap_fiori_3|
|**UI5 Version**<br>Latest |
|**Enable Telemetry**<br>True |

## vako

A Fiori application.

### Starting the generated app

-   This app has been generated using the SAP Fiori tools - App Generator, as part of the SAP Fiori tools suite.  In order to launch the generated app, simply run the following from the generated app root folder:

```bash
    npm start
```

- It is also possible to run the application using mock data that reflects the OData Service URL supplied during application generation.  In order to run the application with Mock Data, run the following from the generated app root folder:

```bash
    npm run start-mock
```

#### Pre-requisites

1. Active NodeJS LTS (Long Term Support) version and associated supported NPM version.  (See https://nodejs.org)

### Deployment

Add a file `.env` into the root folder fiori with following content:

```yaml
UI5_USERNAME=<YOUR_USER>
UI5_PASSWORD=<YOUR_PASSWORD>
```

## Known problems

### Function Import – The specified HTTP method is not allowed for the resource identified by the Data Service Request URI

The reason is this statement, which should allow to handle a action on multiple elements:

```abap
action release_sales_order_item result [1..*] $self;
```

Solution is described [here](https://blogs.sap.com/2018/06/29/function-import-the-specified-http-method-is-not-allowed-for-the-resource-identified-by-the-data-service-request-uri/), but based on classic SEGW-projects.

Other useful link(s) on this topic:

- [Fiori Elements List – Add and Implement Action Button](https://blogs.sap.com/2019/05/31/fiori-elements-list-add-and-implement-action-button/)
- [Fiori Elements – A Journey of Building an Action Dialog on a List Report using Annotation](https://blogs.sap.com/2019/10/15/a-journey-of-building-an-action-dialog-on-a-list-report-with-annotations/comment-page-1/#comment-523577)
- [Fiori Elements: Actions and Function Imports in List Report](https://blogs.sap.com/2019/05/03/fiori-elements-actions-and-function-imports-in-list-report/)
