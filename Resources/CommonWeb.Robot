*** Settings ***
Documentation  This file contain common tasks regarding web application testing.
Resource  ../Resources/Configuration.Robot
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    open browser  ${URL}  ${BROWSER}
    maximize browser window
End Web Test
    close browser