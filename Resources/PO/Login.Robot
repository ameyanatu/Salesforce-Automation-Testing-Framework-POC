*** Settings ***
Library  Selenium2Library
*** Variables ***
${UserNameElement} =  xpath=//*[@id="username"]
${PassWordElement} =  xpath=//*[@id="password"]
${SubmitElement} =  xpath=//*[@id="Login"]
*** Keywords ***
Enter Credentials and submit
    [Arguments]  ${username}  ${password}
    clear element text  ${UserNameElement}
    clear element text  ${PassWordElement}
    input text  ${UserNameElement}  ${username}
    input text  ${PassWordElement}  ${password}
    click button  ${SubmitElement}
