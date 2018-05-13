*** Settings ***
Library           Selenium2Library

*** Variable ***
${URL}=     https://www.amazon.com.au/
${LoadedCondition}=     Your Amazon.com.au
${SearchLocator}=   field-keywords
${Query}=   Robot Framework Test Automation
${Result}=  s-result-count
*** Keywords ***
Load
    Go To       ${URL}
Verify Landing Page Loaded
    Wait Until Page Contains        ${LoadedCondition}
    Log To Console    Checked Page Containes ${LoadedCondition} in ${URL}
Find Search Box and Search
    Input Text      name=${SearchLocator}   ${Query}
    Click Element   xpath=//input[@value='Go']
    Element Should Be Visible     id=${Result}
    ${txt}=     Get Text     id=${Result}
    Log To Console   ${txt}
    Capture Page Screenshot   
