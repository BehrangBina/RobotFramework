*** Settings ***
Library           Selenium2Library

*** Variable ***
${URL} =  https://au.linkedin.com/
${BROWSER} =  edge

*** Test Case ***
Chek Link in    
    Given I go to link in 

*** Keywords ***
Given I go to link in   
    Open Browser        ${URL}      ${BROWSER}
    [Teardown]      Close Browser


#robot -v  BROWSER:chrome -v URL:"https://www.yahoo.com"  Gerkin.robot