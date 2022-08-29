*** Settings ***
Documentation  Scaler Login Actions
Library  AppiumLibrary  run_on_failure=No Operation
Resource  ../../Keywords/CommonActions.robot

Variables  ../../config.py

*** Variables ***
#text locators
${TEXT_AUTO_VERIFY}  Auto Verifying
${TEXT_VIEW_ACCOUNT_DETAILS}  View Account Details

#id locators
${ID_VERIFY_OTP}  com.scaler.app:id/btnVerifyOtp

#xpath locators
${XPATH_SIGN_UP_CTA}  //*[@text=“Looking to access your saved content? Sign in / Sign up”]
${XPATH_MOBILE_NUMBER}  //*[@resource-id=“com.scaler.app:id/etUserId”]
${XPATH_PROCEED_CTA}  //*[@resource-id=“com.scaler.app:id/btnUserIdLogin”]

*** Keywords ***
Test Login Module
   [Documentation]  Test Login Module
   wait until page contains element  ${XPATH_SIGN_UP_CTA}
   click element  ${XPATH_SIGN_UP_CTA}
   wait until page contains element  ${XPATH_MOBILE_NUMBER}
   click element  ${XPATH_MOBILE_NUMBER}
   input text  ${XPATH_MOBILE_NUMBER}  ${TEXT_MOBILE_NUMBER}
   click element  //*[@resource-id=“com.scaler.app:id/btnUserIdLogin”]
   wait until page does contains  ${TEXT_AUTO_VERIFY}
   wait until page does not contains  ${TEXT_AUTO_VERIFY}  20
   wait until page contains  ${TEXT_VIEW_ACCOUNT_DETAILS}