*** Settings ***
Documentation  Login Test
Resource  ../Keywords/CommonActions.robot
Resource  ../Keywords/LoginActions.robot

#Test Teardown  run keyword if test failed  Capture Page Screenshot

*** Test Cases ***
Login Test using mobile number
    #[Documentation] Login Module Tests Case 1 : Verify if login flow is working
    [Tags]  regression  <testcase_ID>
    Launch Scaler App
    Test Login Module

Verify Upcoming Events Section
    #[Documentation] Verify Upcoming Events Section
    [Tags]  regression  <testcase_ID>
    Launch Scaler App
    Verify Upcoming Events