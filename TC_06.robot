*** Settings ***
Test Setup
Test Teardown   Close All Browsers
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
${New_url}      https://www.lenovo.com/in/en/p/laptops/yoga/yoga-s-series/yoga-slim-7i-gen-9-aura-edition-15-inch-intel/len101y0051/?IPromoID=LEN988953#
${title}    Automation Testing Practice
*** Test Cases ***
Labels And Links
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Element Should Be Visible    //div[@id="HTML11"]//h2
    laptop links
    Broken Links
*** Keywords ***
laptop links
    Click Element   //div[@id="laptops"]/a[2]
    go to       ${base_url}
    Element Should Be Visible    //div[@id="header-inner"]/div[1]/h1  ${title}

Broken Links
    Click Element   //div[@id="broken-links"]/a[4]
    go to       ${base_url}
    Element Should Be Visible    //div[@id="header-inner"]/div[1]/h1  ${title}
