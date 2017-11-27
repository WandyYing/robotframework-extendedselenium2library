*** Settings ***
Test Teardown     Close Browser
Library           ../../../src/ExtendedSeleniumLibrary/

*** Test Cases ***
Test ES2L Click Element
    [Documentation]    Should log locator during click element
    [Setup]    Open Browser    file://${CURDIR}/../html/issue_9.html    firefox
    Click Element    link=Get Teapot
