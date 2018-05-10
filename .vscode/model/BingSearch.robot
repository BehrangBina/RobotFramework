*** Settings ***
Library           Selenium2Library
*** Keywords ***
Begin Tests
    Open Browser    about:blank     Chrome
    Maximize Browser Window
Open UrL
    Go To       ${URL}
Put Keyword In Search and Search  
    Input Text    id=sb_form_q    Behrang Bina
    Click Element    name=go
Check and print search results  
    Element Should Contain    xpath=//*[@id="b_results"]/li[1]/h2/a/strong    Behrang Bina
    ${AllLinksCount}=    Get Matching Xpath Count     xpath=//*[@id="b_results"]/li/h2/a/strong
    Log To Console  ${AllLinksCount}
    : FOR    ${INDEX}    IN RANGE    1    ${AllLinksCount}
    \    ${MYLINKS}=    Get Text      xpath=//*[@id="b_results"]/li[${INDEX}]/h2/a
    \    Log To Console   ${MYLINKS}
    Log To Console    Behrang Bina Found
Get result screenthsot
    Capture Page Screenshot        Behrang_Bina.png
End web Test
    Close Browser
