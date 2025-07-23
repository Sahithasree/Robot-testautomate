*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
*** Test Cases ***
Double Click
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Double Clicking
*** Keywords ***
Double Clicking
    Scroll Element Into View    //div[@id="HTML10"]//h2
    Double Click Element    //button[@ondblclick="myFunction1()"]
    sleep   3 seconds

