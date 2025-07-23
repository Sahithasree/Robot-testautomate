*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     http://demo.automationtesting.in/Windows.html
${new_url}      https://www.selenium.dev/
*** Test Cases ***
TabbedWindowsTest
    Open Browser     ${base_url}  chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="Tabbed"]/a/button
    open browser      ${new_url}
    Maximize Browser Window
    Switch Browser  1
    ${title}=   get title
    Switch Browser  2
    ${title}=   get title
