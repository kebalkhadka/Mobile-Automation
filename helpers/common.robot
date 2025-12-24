*** Settings ***
Library    AppiumLibrary

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
${IOS_device}    iphone 7
${IOS_automation}    XCUITest
${IOS_APP}        D:\mobile\apk\iOS.RealDevice.SauceLabs.Mobile.Sample.app.2.7.1.ipa
${BUNDLE_ID}      com.swaglabsmobileapp


*** Keywords ***
Open SwagLabs App
    IF    '${PLATFORM_NAME}' == 'Android'
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    app=${APP_PATH}
    ...    appWaitActivity=com.swaglabsmobileapp.*
    ...    appWaitDuration=30000
    ...    noReset=true
    ...    fullReset=false
    
    ELSE IF    '${PLATFORM_NAME}' == 'ios'
        Open Application    ${REMOTE_URL}
        ...    platformName=iOS
        ...    deviceName=${IOS_DEVICE}
        ...    automationName=${IOS_AUTOMATION}
        ...    app=${IOS_APP}
        ...    bundleId=${BUNDLE_ID}
        ...    noReset=true

    END
