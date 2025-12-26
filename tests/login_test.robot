*** Settings ***
Resource         ../Pages/LoginPage.robot

# These use the keywords we defined in common.robot
Test Setup       Open SwagLabs App
Test Teardown    Close Application

*** Test Cases ***
User Should Be Able To Login
    [Documentation]    Verify standard user can login successfully.
    Login With Valid Credentials    standard_user    secret_sauce
    Verify Successful Login

#User Should See Error For Locked Out User
#    [Documentation]    Verify locked_out_user sees the correct error message.
#    Login With Valid Credentials    locked_out_user    secret_sauce
#    Verify Error Message Shown      Epic sadface: Sorry, this user has been locked out.