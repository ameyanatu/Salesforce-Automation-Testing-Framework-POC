*** Settings ***
Documentation  This is a Startup file which contains main test case to test Salesforce Application
Resource  ../Resources/CommonWeb.Robot
Resource  ../Resources/PO/Login.Robot
Resource  ../Resources/ExcelDataManager.Robot
Resource  ../Resources/Configuration.Robot
Resource  ../Resources/PO/AppObjectNavigation.Robot
Test Setup  CommonWeb.Begin Web Test
Test Teardown  CommonWeb.End Web Test
# robot -d results tests/SalesforceTest.robot
*** Test Cases ***
Validate App, Object and fields in Salesforce Application
    ${Username} =  ExcelDataManager.Get UserName Data  ${FILEPATH}
    ${Password} =  ExcelDataManager.Get PassWord Data  ${FILEPATH}
    log  @{Username}[0]
    log  @{Password}[0]
    Login.Enter Credentials and submit  @{Username}[0]  @{Password}[0]
    capture page screenshot
    sleep  5s
    ${AppName} =  ExcelDataManager.Get App Data  ${FILEPATH}
    ${ObjectName} =  ExcelDataManager.Get Object Data  ${FILEPATH}
    log  @{AppName}[0]
    log  @{ObjectName}[0]
    AppObjectNavigation.Select App  @{AppName}[0]
    capture page screenshot
    AppObjectNavigation.Select Object  @{ObjectName}[0]
    capture page screenshot
    ${FieldsName} =  ExcelDataManager.Get Fields Data  ${FILEPATH}
    log  ${FieldsName}
    #Stupid Lighting popup
    sleep  3s
    capture page screenshot
    run keyword and continue on failure  click element  xpath=//*[@id="tryLexDialogX"]
    capture page screenshot
    AppObjectNavigation.validate fields  ${FieldsName}
    capture page screenshot


