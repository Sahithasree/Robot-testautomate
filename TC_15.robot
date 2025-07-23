*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
*** Test Cases ***
Scrolling DropDown
    Open Browser    ${base_url}    chrome
    Maximize Browser Window
    sleep   2 sec
    Scrolling down
*** Keywords ***
Scrolling down
    #Scroll Element Into View    //div[@id="HTML17"]//h2
    Click Element    //input[@placeholder="Select an item"]
    Scroll Element Into View   (//div[@class="option"])[80]
    Click Element  (//div[@class="option"])[80]


