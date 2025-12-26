*** Settings ***
Library    AppiumLibrary
Resource    ../Pages/LoginPage.robot

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723
${PLATFORM_NAME}        Android
# Android specs
${DEVICE_NAME}          emulator-5554
${AUTOMATION_NAME}      UiAutomator2
${APP_PACKAGE}          com.swaglabsmobileapp
${APP_ACTIVITY}         com.swaglabsmobileapp.MainActivity
${APP_PATH}             C:/Users/97798/Desktop/mobile/apk/Android.SauceLabs.Mobile.Sample.app.2.7.1.apk

# IOS specs
${IOS_URL}    https://kebalkhadka_Q2Zwht:eKAq5Jyx4qcKQi6SExdS@hub-cloud.browserstack.com/wd/hub
${IOS_DEVICE}    iphone 13
${IOS_OS_VERSION}     16
${IOS_AUTOMATION}    XCUITest
${IOS_APP}        bs://5633d6b6a9444f5902eed1a4d07fdf7ce8e9097b


*** Keywords ***
Open SwagLabs App
    IF    '${PLATFORM_NAME}' == 'Android'
        Open Application    ${REMOTE_URL}
        ...    platformName=Android
        ...    deviceName=${DEVICE_NAME}
        ...    automationName=${AUTOMATION_NAME}
        ...    appPackage=${APP_PACKAGE}
        ...    appActivity=${APP_ACTIVITY}
        ...    app=${APP_PATH}
        ...    noReset=true

    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Open Application    ${IOS_URL}
        ...    platformName=iOS
        ...    deviceName=${IOS_DEVICE}
        ...    os_version=${IOS_OS_VERSION}
        ...    automationName=${IOS_AUTOMATION}
        ...    app=${IOS_APP}
        ...    name=Robot iOS Test
    END

