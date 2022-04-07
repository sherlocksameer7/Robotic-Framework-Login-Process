*** Settings ***
Library  SeleniumLibrary
*** Variables ***

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
*** Keywords ***