*** Settings ***
Library           Selenium2Library

*** Keywords ***
Open GoogleSearch
    Go To       https://www.google.com/

Check and print search results
    Input Text    name=q   Behrang Bina
    Click Element    name=btnK