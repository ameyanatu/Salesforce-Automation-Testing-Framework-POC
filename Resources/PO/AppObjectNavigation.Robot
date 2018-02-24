*** Settings ***
Library  Selenium2Library
*** Variables ***

${AppChooserElement} =  xpath=//*[@id="tsidButton"]

*** Keywords ***
Select App
    [Arguments]  ${AppName}
    click element  ${AppChooserElement}
    #${WebElementResult} =  page should contain element  link=${AppName}
    #log  ${WebElementResult}
    #run keyword unless  '${WebElementResult}'=='Pass'  click element  link=${AppName}
    run keyword and ignore error  wait until page contains element  link=${AppName}
Select Object
    [Arguments]  ${ObjectName}
    wait until page contains element  link=${ObjectName}
    run keyword and continue on failure  click element  link=${ObjectName}
    run keyword and continue on failure  wait until page contains  Accounts
validate fields
    [Arguments]  ${FieldsName}
    log  $[FieldsName]