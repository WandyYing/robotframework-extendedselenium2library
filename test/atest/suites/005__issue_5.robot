*** Settings ***
Test Teardown     Close Browser
Library           ../../../src/ExtendedSeleniumLibrary/

*** Test Cases ***
Test ES2L Undefined Interdimensional Cartography Injector
    [Documentation]    Should find the injector for AngularJS 1.2.8
    Open Browser    file://${CURDIR}/../html/issue_5.html    firefox
