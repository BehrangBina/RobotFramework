*** Settings ***
Library           Selenium2Library
Resource          ../PO/LandingPage.robot
Resource          ../Common.robot
###
Test Setup          Common.Begin Tests
Test Teardown       Common.End web Test 

*** Test Case ***
Search For Product
    LandingPage.Load
    LandingPage.Verify Landing Page Loaded