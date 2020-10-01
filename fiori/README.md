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

```
    npm start
```

- It is also possible to run the application using mock data that reflects the OData Service URL supplied during application generation.  In order to run the application with Mock Data, run the following from the generated app root folder:

```
    npm run start-mock
```

#### Pre-requisites:

1. Active NodeJS LTS (Long Term Support) version and associated supported NPM version.  (See https://nodejs.org)

### Deployment

Add a file `.env` into the root folder fiori with following content:

```yaml
UI5_USERNAME=<YOUR_USER>
UI5_PASSWORD=<YOUR_PASSWORD>
```
