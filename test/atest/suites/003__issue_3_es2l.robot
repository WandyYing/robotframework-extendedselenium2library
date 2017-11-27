*** Settings ***
Suite Setup       Suite Setup
Suite Teardown    Close Browser
Test Setup        Test Setup
Library           ../../../src/ExtendedSeleniumLibrary/

*** Test Cases ***
Test ES2L Without Confirm Action
    [Documentation]    Click link without confirm action in ES2L
    ${error} =    Run Keyword And Expect Error    *    Page Should Contain    teapot
    Should Contain    ${error}    UnexpectedAlertPresentException
    Should Contain    ${error}    WebDriverException

Test ES2L With Confirm Action
    [Documentation]    Click link with confirm action in ES2L
    Confirm Action
    Page Should Contain    teapot

*** Keywords ***
Suite Setup
    [Documentation]    Suite setup for all ES2L test cases
    Open Browser    file://${CURDIR}/../html/issue_3.html    chrome
    Set Selenium Implicit Wait    0
    Choose Ok On Next Confirmation

Test Setup
    [Documentation]    Test setup for ES2L test cases
    Go Back
    Click Link    Delete    skip_ready=${true}
