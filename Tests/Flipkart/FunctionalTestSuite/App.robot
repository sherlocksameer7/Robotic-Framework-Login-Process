*** Settings ***
Library  SeleniumLibrary

Suite Setup  Log  Inside Test Suite SetUp   # Also Use SetUp and TearDown !!!
Suite Teardown  Log  Inside Test Suite TearDown

Test Setup  Log  Inside Test Case SetUp
Test Teardown  Log  Inside Test Case TearDown

*** Variables ***
${google_search}    https://www.google.co.in/
${flip_search}  flipkart
${product_search}   iphone 13
${purchase_search}  arijitsameers@gmail.com

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
    sleep  3s
    Click Button    class:L0Z3Pu

Purchased Item Test
    [Documentation]  This is to test the Product to Purchase
    [Tags]  Purchase
    sleep  3s
    Click Element   class:_4rR01T
    sleep  1s
    Switch Window   title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    sleep   1s
    Click Button    class:ihZ75k
    sleep  3s
    Email Address
    sleep  2s
    Click Button    class:_20xBvF

*** Keywords ***
Search Data
    Input Text  name:q  ${flip_search}
Flip Data Search
    Input Text  name:q  ${product_search}
Email Address
    Input Text  class:_17N0em     ${purchase_search}