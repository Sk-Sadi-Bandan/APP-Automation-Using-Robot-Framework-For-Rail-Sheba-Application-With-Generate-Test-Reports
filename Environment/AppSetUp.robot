*** Settings ***
Library   AppiumLibrary
Library   Process
Resource  ../Environment/AppSetup.robot

*** Variables ***

#*** Real Device ***#
${SCREEN_WIDTH}                  1080
${SCREEN_HEIGHT}                 1920
${SWIPE_INTERVAL}                2  # seconds
${APP}                           E:\\Rail Sheba App Automation Using Robot Framework\\RailSheba.apk
${NEW_COMMAND_TIMEOUT}           300000    # 5 minutes (in milliseconds)
${SERVER_LAUNCH_TIMEOUT}         60000    # 60 seconds (in milliseconds)
${SERVER_INSTALL_TIMEOUT}        60000   # 60 seconds (in milliseconds)

${REMOTE_URL}                    http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}                 Android
${PLATFORM_VERSION}              12
${DEVICE_NAME}                   vivo Y21
${APP_PACKAGE}                   com.shohoz.dtrainpwa
${APP_ACTIVITY}                  com.shohoz.dtrainpwa.LauncherActivity

*** Keywords ***
Open app
    [Arguments]
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    newCommandTimeout=${NEW_COMMAND_TIMEOUT}    uiautomator2ServerLaunchTimeout=${SERVER_LAUNCH_TIMEOUT}    uiautomator2ServerInstallTimeout=${SERVER_INSTALL_TIMEOUT}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}

Close app
    Close Application

