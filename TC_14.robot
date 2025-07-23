*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
*** Test Cases ***
Slider
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Scroll Element Into View   //div[@id="HTML7"]/h2
    Moving slider
*** Keywords ***
Moving slider
    Click Element   //span[@class="ui-slider-handle ui-corner-all ui-state-default"]
    Click Element    //span[@class="ui-slider-handle ui-corner-all ui-state-default ui-state-hover"]
