*** Settings ***
Library           ExcelLibrary
Library           Collections

*** Variable ***
${columnName} =  Last Name
${sheetName} =  Sheet1
${headerId} =  0

*** Test Case ***
User can get a column by Name
    Read Column By name  model/Resources/users.xls


*** Keywords ***
Read Column By name
    [Arguments]     ${excelFileLocation}
    Open Excel       ${excelFileLocation}
    ${headerVal} =  Get Row Values  	${sheetName}   ${headerId}   
    ${numberOfHeaders} =  Get Length  ${headerVal}
    Log To Console    Number of Headers: ${numberOfHeaders}
    ${columnId} =  Search  ${headerVal}  ${columnName}  ${numberOfHeaders} 
    ${columnValues} =  Get Column Values  ${sheetName}   ${columnId}
    Log To Console  ${columnValues}
Search
    [Arguments]  ${headerVal}  ${columnName}  ${numberOfHeaders}
    :FOR  ${index}  IN RANGE        0       ${numberOfHeaders}
    \       #Log To Console  I:${index}
    \       ${objLblValue} =	Get From List	${headerVal}  ${index}
    \       ${value}=       Get From List   ${objLblValue}    1
    \       Return From Keyword If  '${value}' == '${columnName}'     ${index}
     

