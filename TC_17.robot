*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
${title}    Automation Testing Practice
${title2}   SDET-QA

*** Test Cases ***
Header Links
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Element Should Be Visible    //div[@id="header-inner"]/div[1]/h1  ${title}
    Online Trainings

*** Keywords ***
Online Trainings
    Click Element   //a[@href="https://www.pavanonlinetrainings.com/"]
    Element Should Be Visible   //h1[@class="title"]    ${title2}
    go to        ${base_url}