*** Settings ***
Documentation  This is a index file to test Salesforce Application
Resource  ../Resources/CommonWeb.Robot
Resource  ../Resources/PO/Login.Robot
Resource  ../Resources/ExcelDataManager.Robot
Resource  ../Resources/Configuration.Robot
Resource  ../Resources/PO/AppObjectNavigation.Robot
Test Setup  CommonWeb.Begin Web Test
Test Teardown  CommonWeb.End Web Test

# robot -d results tests/SalesforceTest.robot
*** Variables ***

*** Test Cases ***
Validate App, Object and fields in Salesforce Application
    ${Username} =  ExcelDataManager.Get UserName Data  ${FILEPATH}
    ${Password} =  ExcelDataManager.Get PassWord Data  ${FILEPATH}
    log  @{Username}[0]
    log  @{Password}[0]
    Login.Enter Credentials and submit  @{Username}[0]  @{Password}[0]
    sleep  3s
    ${AppName} =  ExcelDataManager.Get App Data  ${FILEPATH}
    ${ObjectName} =  ExcelDataManager.Get Object Data  ${FILEPATH}
    log  @{AppName}[0]
    log  @{ObjectName}[0]
    AppObjectNavigation.Select App  @{AppName}[0]
    AppObjectNavigation.Select Object  @{ObjectName}[0]
    ${FieldsName} =  ExcelDataManager.Get Fields Data  ${FILEPATH}
    AppObjectNavigation.validate fields  ${FieldsName}


