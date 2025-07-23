*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
${NAME_FIELD}   xpath://input[@id="name"]
${name}          john doe
${EMAIL_FIELD}   xpath://input[@placeholder="Enter EMail"]
${email}         john.doe@example.com
${Phone_Feild}  //input[@id="phone"]
${phone}        9087654321
${ADREESS_FEILD}    //*[@id="textarea"]
${Address}      Royal's PG for Ladies, 10, White Petal Layout, Nallurahalli Main Rd, near Divyashree Technopark, Nallurhalli, Whitefield, Bengaluru, Karnataka 560066, Bengaluru, Karnataka 560087
*** Test Cases ***
GUI Elements
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    ${Title}=   Get Title
    Element Should Be Visible   //a[@href="https://testautomationpractice.blogspot.com/2018/09/automation-form.html"]
    set selenium implicit_wait    2 seconds
    GUI Element Case

*** Keywords ***
GUI Element Case
    Input Text      ${NAME_FIELD}       ${name}
    Input Text      ${EMAIL_FIELD}      ${email}
    Input Text      ${Phone_Feild}      ${phone}
    Input Text      ${ADREESS_FEILD}    ${Address}
     Select Radio Button    gender    female
    Select Checkbox     //input[@id="saturday"]
    Select From List By Index      //select[@id="country"]   5
    Select From List By Index      //Select[@id="colors"]    6
    Select From List By Index      //Select[@id="animals"]  3
    Input Text      //input[@id="datepicker"]      14/04/2025
    Input Text      //input[@id="start-date"]   14/04/2025
    Input Text      //input[@id="end-date"]   25/04/2025
    Click Button    //button[@onclick="calculateRange()"]
    Wait Until Element Is Visible   //div[@id="result"]
