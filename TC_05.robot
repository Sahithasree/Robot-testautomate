*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/

*** Test Cases ***
ShadowDOM
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    opening link
*** Keywords ***
opening link
    Click Element    //a[@href="https://www.youtube.com/@sdetpavan/videos"]
    Capture Page Screenshot