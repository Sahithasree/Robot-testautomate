*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
${drag_element}     //div[@id="draggable"]
${drop_element}     //div[@id="droppable"]
*** Test Cases ***
Drag and Drop
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    Draging and Droping
*** Keywords ***
Draging and Droping
    Drag And Drop   ${drag_element}     ${drop_element}
    Capture Element Screenshot   //div[@class="ui-widget-header ui-droppable ui-state-highlight"]