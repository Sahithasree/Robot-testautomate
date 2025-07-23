*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
${popup_url1}   https://demo.opencart.com/

*** Test Cases ***
Handling Alerts
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Types of Alerts

*** Keywords ***
Types of Alerts
    Scroll Element Into View    //div[@id="HTML9"]/h2
    Click Element    //button[@id="alertBtn"]
    handle alert  accept
    Click Element    //button[@onclick="myFunctionConfirm()"]
    handle alert   dismiss
     Click Element    //button[@onclick="myFunctionPrompt()"]
    handle alert   accept



