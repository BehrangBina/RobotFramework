*** Settings ***
Documentation     A resource file containing the application specific keywords



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

