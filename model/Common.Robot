*** Settings ***
Library           Selenium2Library

*** Keywords ***
Begin Tests
    Open Browser    about:blank     Chrome
    Maximize Browser Window
    
End web Test
    Close Browser