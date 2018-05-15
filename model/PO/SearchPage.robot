*** Settings ***
Library           Selenium2Library

*** Keywords ***
Display All Results
    ${links}=   Get Matching Xpath Count     xpath=//a
    Log To Console  ${links}