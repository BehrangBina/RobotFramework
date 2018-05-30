*** Settings ***
Resource        ../Resources/tbr.robot
Library         ../Resources/MyCustomLibrary.py
#Library         ../Resources/RobotLibrary.java

*** Test Case ***
Use External Library
    Do Something Special
    ${val} =  Do Another Special Thing
    Log To Console  ${val}
    ${val2} =  Say Hello  Behrang 
    Log To Console  ${val2}
    #Something Good
#//span[@class='a-size-small'][contains(text(),'CRASH')]