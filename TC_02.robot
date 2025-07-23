*** Settings ***
Test Setup
Test Teardown   Close Browser
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn

*** Variables ***
${base_url}     https://testautomationpractice.blogspot.com/
${upload_btn}   //input[@id="singleFileInput"]
${fileto_upload}    A Samplefile.txt
${upload_singlefile_btn}    //form[@id="singleFileForm"]/button[1]
${upload2_btn}      //input[@id="multipleFilesInput"]
${fileto_upload2}   A Simplefile.txt
${upload_multiplefile_btn}      (//button[@type="submit"])[2]
*** Test Cases ***
Upload Files
    Open Browser    ${base_url}     chrome
    Maximize Browser Window
    uploading file
*** Keywords ***
uploading file
    Scroll Element Into View    //div[@id="HTML15"]/h2
    Choose File   ${upload_btn}     ${CURDIR}${/}${fileto_upload}
    Click Button    ${upload_singlefile_btn}
    Choose File     ${upload2_btn}    ${CURDIR}${/}${fileto_upload}
    Choose File     ${upload2_btn}    ${CURDIR}${/}${fileto_upload2}
    Click Button    ${upload_multiplefile_btn}
    Element Should Be Visible   //p[@id="multipleFilesStatus"]
    Capture Page Screenshot
