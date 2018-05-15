*** Settings ***
Library    ExcelLibrary
Resource   Resources/ReadSpreadSheet.robot

*** Test Cases ***
Check excel doc
    Open Excel      ../model/Resources/users.xls
    Log To Console    ${\n}
    ${strColCount} =  Get Column Count   Sheet1
    ${strRowCount} =  Get Row Count      Sheet1
    Log To Console      columns=${strColCount} rows=${strRowCount}
    ${cellVal}=     Read the value of a cell        0       1
    Log To Console      ${cellVal}
    ${cellVal}=     Read the value of a cell        1       1
    Log To Console      ${cellVal}
    
Display Data
    Open Excel      ../model/Resources/users.xls
    ${strRowCount} =  Get Row Count      Sheet1
    Display Data        ${strRowCount}
