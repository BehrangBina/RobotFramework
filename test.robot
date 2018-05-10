*** Settings ***
Documentation     A resource file containing the application specific keywords
Library           Selenium2Library
Library           String

*** Variables ***
${URL}=     https://www.bing.com/


*** Test Cases ***
Check out me
    Begin Tests
    Open UrL
    Put Keyword In Search and Search
    Check and print search results
    Get result screenthsot
    End web Test  
    
*** Test Cases ***
For-Loop-In-Range
        : FOR    ${INDEX}    IN RANGE    1    3
        \    Log    ${INDEX}
        \    ${RANDOM_STRING}=    Generate Random String    ${INDEX}
        \    Log    ${RANDOM_STRING}
For-Loop-Elements
            @{ITEMS}    Create List    Star Trek    Star Wars    Perry Rhodan
            :FOR    ${ELEMENT}    IN    @{ITEMS}
            \    Log    ${ELEMENT}
            \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
            \    Log    ${ELEMENT}
For-Loop-Exiting
            @{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
            :FOR    ${ELEMENT}    IN    @{ITEMS}
            \    Log    ${ELEMENT}
            \    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
            \    Log    Do more actions here ...

Repeat-Action
            Repeat Keyword    2    Log    Repeating this ...

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
