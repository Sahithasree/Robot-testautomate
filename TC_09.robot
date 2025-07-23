*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/

*** Test Cases ***
Mouse Hover
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Mouse single click
*** Keywords ***
Mouse single click
    Element SHould Be Visible   //div[@id="HTML3"]//h2
    Click Element    //button[@class="dropbtn"]
    #sleep   3 seconds
    Click Element   //div[@id="HTML3"]/div[1]/div/div/a[2]
   #  sleep   3 seconds