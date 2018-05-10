*** Settings ***
Library           Selenium2Library

*** Keywords ***
Begin Tests         
    Open Browser    about:blank     chrome
    Maximize Browser Window
    
End web Test
    Close Browser