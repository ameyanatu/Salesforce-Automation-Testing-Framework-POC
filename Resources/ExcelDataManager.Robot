*** Settings ***
Documentation  This file used to get data from excel sheet
Library  ../CustomLib/ReadExcelFile.py

*** Keywords ***
Get UserName Data
    [Arguments]  ${FILENAME}
    ${DATA} =  read UserNames  ${FILENAME}
    [Return]  ${DATA}

Get PassWord Data
    [Arguments]  ${FILENAME}
    ${DATA} =  read Passwords  ${FILENAME}
    [Return]  ${DATA}

Get App Data
    [Arguments]  ${FILENAME}
    ${DATA} =  read AppName  ${FILENAME}
    [Return]  ${DATA}

Get Object Data
    [Arguments]  ${FILENAME}
    ${DATA} =  read Objects  ${FILENAME}
    [Return]  ${DATA}

Get Fields Data
    [Arguments]  ${FILENAME}
    ${DATA} =  read Fields  ${FILENAME}
    [Return]  ${DATA}