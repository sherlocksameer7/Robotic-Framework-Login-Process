*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${google_search}    https://www.google.co.in/
${flip_search}  flipkart
${product_search}   iphone 13
*** Test Cases ***
Google Search Test
    [Documentation]  This Test is to Open Google
    [Tags]  Google
    Open Browser    ${google_search}    chrome
    Maximize Browser Window
    Search Data
    Submit Form
    Click Element   class:LC20lb

Flipkart Test
    [Documentation]  This is to test the Flipkart Search
    [Tags]  Shopping App
    sleep  3s
    Click Button    class:_2KpZ6l
    Flip Data Search
    sleep  7s
    Click Button    class:L0Z3Pu

*** Keywords ***
Search Data
    Input Text  name:q  ${flip_search}
Flip Data Search
    Input Text  name:q  ${product_search}