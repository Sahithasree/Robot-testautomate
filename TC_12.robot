*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
*** Test Cases ***
Dynamic button
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Scroll Element Into View    //div[@id="HTML5"]//h2
    opening Dynamic
*** Keywords ***
opening Dynamic
    Click Button    //button[@name="start"]
    sleep   3 sec
    Click Button    //button[@name="stop"]