*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Popups
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    popup windows

*** Keywords ***
popup windows
    Click Button   //button[@onclick="myFunction()"]
    go to       ${base_url}
    Click Button    //button[@onclick="return popup()"]
    Maximize Browser Window


