*** Settings ***
Documentation     A resource file containing the application specific keywords
Resource        model/BingSearch.robot
Resource        model/Common.robot
Resource        model/Loops.robot
Resource        model/GoogleSearch.robot
###
Test Setup          Begin Tests
Test Teardown       End web Test 
*** Variables ***
${URL}=     https://www.bing.com/

*** Test Cases ***
Check out me    
    Open UrL
    BingSearch.Put Keyword In Search and Search
    BingSearch.Check and print search results
    BingSearch.Get result screenthsot   

Check out me on GoogleSearch
    GoogleSearch.Open GoogleSearch
    GoogleSearch.Check and print search results
    BingSearch.Get result screenthsot

Try Loops
    For-Loop-In-Range
    For-Loop-Elements
    For-Loop-Exiting
    Repeat-Action