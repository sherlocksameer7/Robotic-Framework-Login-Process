*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  https://www.google.co.in/
${search_p}  Amazon.in

*** Test Cases ***
log screen test
     [Documentation]  This is a Login Screen for all Users
     [Tags]  User
     log    Hello

registration screen test
     [Documentation]  This is the Registration Screen for New Users
     [Tags]  User
     log  Success

admin login test
     [Documentation]  This is Admin Screen
     [Tags]  Admin
     log  Admin

google test
     [Documentation]  Google Search Test
     [Tags]  Internet
     Open Browser    ${web_url}  chrome
     Maximize Browser Window
     Input Text     name:q  ${search_p}
     Submit Form
     sleep  5s
     Close Browser

*** Keywords ***
