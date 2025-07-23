*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
*** Test Cases ***
Footer links
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Clicking and Checking Footer links
*** Keywords ***
Clicking and Checking Footer links
    Click Element        //div[@id="PageList1"]/div/ul/li[1]/a
    Element Should Be Visible   //div[@id="header-inner"]/div[1]/h1
    Click Element        //div[@id="PageList1"]/div/ul/li[2]/a
    Element Should be visible     //*[@id="Blog1"]/div[1]/div/div/div/div[1]/h3
    Input Text      //input[@id="input1"][1]    "sample element"
    Select Checkbox      //input[@id="checkbox1"]
    Click Button    //button[@id="toggleInput"]
    Element Should Be Visible   //span[@id="statusLabel"]
    Click Button        //button[@id="loadContent"]
    Element Should Be Visible  //span[@id="statusLabel"]
    Click Element        //div[@id="PageList1"]//div//ul//li[3]//a
    Element Should Be Visible   //h3[@itemprop="name"]
    Input Text  //textarea[@id="inputText"]     "Sample file to download"
    Click Button    //button[@id="generateTxt"]
    Click Element   //a[@id="txtDownloadLink"]
    Click Button    //button[@id="generatePdf"]
    Click Element   //a[@id="pdfDownloadLink"]