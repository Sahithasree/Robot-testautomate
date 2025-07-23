*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
*** Test Cases ***
Form
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Form details
*** Keywords ***
Form details
    Input Text      //input[@id="input1"]    This is sample1 text
    Click Button    //button[@id="btn1"]
    Input Text      //input[@id="input2"]    This is sample2 text
    Click Button    //button[@id="btn2"]
    Input Text      //input[@id="input3"]    This is sample3 text
    Click Button    //button[@id="btn3"]