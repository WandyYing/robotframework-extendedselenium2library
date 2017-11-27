*** Settings ***
Test Teardown     Close Browser
Library           ../../../src/ExtendedSeleniumLibrary/

*** Test Cases ***
Test ES2L Click Button
    [Documentation]    Should be able to find the button using default locator
    [Setup]    Open Browser    file://${CURDIR}/../html/issue_11.html    firefox
    Click Button    Get Teapot
