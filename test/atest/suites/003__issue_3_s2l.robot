*** Settings ***
Suite Setup       Suite Setup
Suite Teardown    Close Browser
Test Setup        Test Setup
Library           ../../../src/ExtendedSeleniumLibrary/

*** Test Cases ***
Test S2L Without Confirm Action
    [Documentation]    Click link without confirm action in S2L
    ${error} =    Run Keyword And Expect Error    *    Page Should Contain    teapot
    Should Contain    ${error}    UnexpectedAlertPresentException
    Should Contain    ${error}    WebDriverException

Test S2L With Confirm Action
    [Documentation]    Click link with confirm action in S2L
    Confirm Action
    Page Should Contain    teapot

*** Keywords ***
Suite Setup
    [Documentation]    Suite setup for all S2L test cases
    Import Library    SeleniumLibrary
    Set Library Search Order    SeleniumLibrary
    Open Browser    file://${CURDIR}/../html/issue_3.html    ff
    Choose Ok On Next Confirmation

Test Setup
    [Documentation]    Test setup for S2L test cases
    Go Back
    Click Link    Delete
