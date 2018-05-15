*** Settings ***
Library           Selenium2Library
Resource          ../PO/LandingPage.robot
Resource          ../PO/SearchPage.robot
Resource          ../Common.robot
###
Test Setup          Common.Begin Tests
Test Teardown       Common.End web Test 

*** Test Case ***
Search For Product
    LandingPage.Load
    LandingPage.Verify Landing Page Loaded
    LandingPage.Find Search Box and Search
Display Results
    LandingPage.Load
    LandingPage.Verify Landing Page Loaded
    LandingPage.Find Search Box and Search
    SearchPage.Display All Results

