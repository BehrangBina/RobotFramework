*** Settings ***
Library           Selenium2Library

*** Variable ***
${URL}=     https://www.amazon.com.au/
${LoadedCondition}=     Your Amazon.com.au

*** Keywords ***
Load
    Go To       ${URL}
Verify Landing Page Loaded
    Wait Until Page Contains        ${LoadedCondition}
    Log To Console    Checked Page Containes ${LoadedCondition} in ${URL}
