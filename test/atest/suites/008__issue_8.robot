*** Settings ***
Test Teardown     Close Browser
Library           ../../../src/ExtendedSeleniumLibrary/

*** Test Cases ***
Test ES2L Undefined Emoji Clairvoyance Injector
    [Documentation]    Should find the injector for AngularJS 1.2.7
    Open Browser    file://${CURDIR}/../html/issue_8.html    firefox
