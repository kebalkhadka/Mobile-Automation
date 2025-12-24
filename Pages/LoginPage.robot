*** Settings ***
Library    AppiumLibrary

*** Variables ***
${USER_INPUT}      accessibility_id=test-Username
${PASS_INPUT}      accessibility_id=test-Password
${LOGIN_BTN}       accessibility_id=test-LOGIN

*** Keywords ***
Login To Application
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USER_INPUT}
    Input Text       ${USER_INPUT}    ${username}
    Input Text       ${PASS_INPUT}    ${password}
    Click Element    ${LOGIN_BTN}