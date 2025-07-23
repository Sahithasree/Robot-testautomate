*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
${title}    Automation Testing Practice
*** Test Cases ***
ShadowDOM
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    opening Blog
*** Keywords ***
opening Blog
    Click Element       //a[@href="https://www.pavantestingtools.com/"]
    Element Should be Visible   //div[@class="titlewrapper"]//h1
    go to       ${base_url}
