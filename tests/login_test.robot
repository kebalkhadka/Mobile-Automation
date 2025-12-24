*** Settings ***
Resource    ../helpers/common.robot
Resource    ../Pages/LoginPage.robot

Test Setup       Open SwagLabs App
Test Teardown    Close Application

*** Test Cases ***
Successful Login
    Login To Application    standard_user    secret_sauce