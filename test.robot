*** Settings ***
Documentation     A resource file containing the application specific keywords
Resource        model/BingSearch.robot
Resource        model/Common.robot
Resource        model/Loops.robot

*** Variables ***
${URL}=     https://www.bing.com/

*** Test Cases ***
Check out me
    Common.Begin Tests
    Open UrL
    BingSearch.Put Keyword In Search and Search
    BingSearch.Check and print search results
    BingSearch.Get result screenthsot
    Common.End web Test  

Try Loops
    For-Loop-In-Range
    For-Loop-Elements
    For-Loop-Exiting
    Repeat-Action
