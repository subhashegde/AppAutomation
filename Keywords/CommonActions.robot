*** Settings ***
Documentation  Scaler Common Keywords
Library  AppiumLibrary  run_on_failure=No Operation
Resource  ../../config.py

*** Keywords ***
Launch Scaler App
   [Documentation]  Launch Scaler App
   [Arguments]    ${reset}=true  ${timeout}=10
   Open Application  ${REMOTE_URL}  platformName=Android
   ...  deviceName=${DEVICE_NAME}  app=${APK_PATH}	appPackage=${PACKAGE_NAME}  unicodeKeyboard=True
   ...  appActivity=${LAUNCHER_ACTIVITY_NAME}  noReset=true  platformVersion=${OS_VERSION}  automationName=UiAutomator2
   Set Appium Timeout  ${timeout}
