*** Settings ***
Library    AppiumLibrary
Resource    ../helpers/common.robot

*** Variables ***
#Universal Locator works for both android and ios
${USER_INPUT}      accessibility_id=test-Username
${PASS_INPUT}      accessibility_id=test-Password
${LOGIN_BTN}       accessibility_id=test-LOGIN

*** Keywords ***
Login With Valid Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USER_INPUT}    5s
    Input Text       ${USER_INPUT}    ${username}
    Input Text       ${PASS_INPUT}    ${password}
    Click Element    ${LOGIN_BTN}

Verify Error Message Shown
    [Arguments]    ${expected_error}
    Element Text Should Be    ${ERROR_CONTAINER}    ${expected_error}

Verify Successful Login
    Wait Until Page Contains    PRODUCTS    10s

