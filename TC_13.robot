*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
*** Test Cases ***
Tabs
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Element Should Be Visible       //div[@id="Wikipedia1"]/h2
    checkin input in tab
*** Keywords ***
checkin input in tab
    Input Text          //input[@id="Wikipedia1_wikipedia-search-input"]        robot-framework
    Click Element       //input[@class="wikipedia-search-button"]