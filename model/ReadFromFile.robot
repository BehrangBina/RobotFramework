*** Settings ***
Library           ExcelLibrary
Library           String
Library           Collections
Library           DateTime
Resource          Common.robot
Library           Selenium2Library

Resource   Resources/ReadSpreadSheet.robot
###
Test Setup          Common.Begin Tests

*** Variable ***
${URL}=     http://demoqa.com/registration/

*** Test Cases ***
Check excel doc
    Open Excel      ../model/Resources/users.xls
    Log To Console    ${\n}
    ${cols}=    Get Column Count    Sheet1
    ${rows}=    Get Row Count      Sheet1    
    :FOR  ${r}  IN RANGE    1   ${rows}
    \   Get Row     ${r}

*** Keywords ***  
#First Name	Last Name	Status	Hobby	Country	Dob

Get Row    
    [Arguments]         ${r}
    ${rowValue}=      Get Row Values   Sheet1   ${r}    #includeEmptyCells=False
    #Log To Console      ${rowValue}
    ${fname}=    Get Value from Column   ${rowValue}       0 
    ${lname}=    Get Value from Column   ${rowValue}       1
    ${status}=   Get Value from Column   ${rowValue}       2
    ${hobby}=    Get Value from Column   ${rowValue}       3
    ${country}=  Get Value from Column   ${rowValue}       4
    Log To Console      | Name: ${fname} | Last Name: ${lname} | Status: ${status} | Hobby: ${hobby} | Country: ${country} |
    Load
    Input Text      id=name_3_firstname   ${fname}
    Input Text      id=name_3_lastname    ${lname}
    ${status}=      Convert To Lowercase    ${status}
    ${hobby}=       Convert To Lowercase    ${hobby}
    Log To Console      //input[@value='${status}']  &  //input[@value='${hobby}']    
    Click Element       //input[@value='${status}']
    Click Element       //input[@value='${hobby}'] 
    Select From List By Value       id=dropdown_7       ${country}
    Sleep   2s
    #Role: ${role} | DOB: ${dob} | Salary: ${salary}

Get Value from Column
    [Arguments]     ${rowValue}     ${colValue}
    ${objLblValue} =	Get From List	${rowValue}	${colValue}
    ${value}=       Get From List   ${objLblValue}    1
    [Return]     ${value}
Load
    Go To       ${URL}
