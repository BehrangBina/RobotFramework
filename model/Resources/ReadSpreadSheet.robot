*** Settings ***
Library    ExcelLibrary

*** Keywords ***
Read the value of a cell
    [Arguments]     ${row}      ${column}
    Log To Console    ${row}-${column}
    ${colVal}      Read Cell Data By Coordinates       Sheet1      ${row}   ${column}
    [return]        ${colVal}

Display Data
    [Arguments]     ${rows}
    :FOR  ${index}  IN RANGE        0       ${rows}
    \       ${col1Val}      Read Cell Data By Coordinates       Sheet1      0   ${index}
    \       ${col2Val}      Read Cell Data By Coordinates       Sheet1      1   ${index}
    \       Log To Console      ${col1Val} - ${col2Val}