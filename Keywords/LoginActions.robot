*** Settings ***
Documentation  Scaler Login Actions
Library  AppiumLibrary  run_on_failure=No Operation
Resource  ../Keywords/CommonActions.robot

Variables  ../config.py

*** Variables ***
#text locators
${TEXT_AUTO_VERIFY}  Auto Verifying
${TEXT_VIEW_ACCOUNT_DETAILS}  View Account Details

#id locators
${ID_VERIFY_OTP}  com.scaler.app:id/btnVerifyOtp
${ID_NONE_OF_THE_ABOVE}  com.google.android.gms:id/cancel

#xpath locators
${XPATH_SIGN_UP_CTA}  //*[@resource-id="com.scaler.app:id/tvSavedContent"]
${XPATH_MOBILE_NUMBER}  //*[@resource-id="com.scaler.app:id/etUserId"]
${XPATH_PROCEED_CTA}  //*[@resource-id="com.scaler.app:id/btnUserIdLogin"]
${XPATH_EMAIL_ID}  //*[@resource-id="com.google.android.gms:id/container" and @index=2]

*** Keywords ***
Test Login Module
   [Documentation]  Test Login Module
   wait until page contains element  ${XPATH_SIGN_UP_CTA}
   click element  ${XPATH_SIGN_UP_CTA}
   wait until page contains element  ${XPATH_MOBILE_NUMBER}
   click element  ${XPATH_MOBILE_NUMBER}
   wait until page contains element  ${ID_NONE_OF_THE_ABOVE}
   click element  ${ID_NONE_OF_THE_ABOVE}
   input text  ${XPATH_MOBILE_NUMBER}  ${TEXT_MOBILE_NUMBER}
   click element  ${XPATH_PROCEED_CTA}
   wait until page contains  ${TEXT_AUTO_VERIFY}
   wait until page does not contain  ${TEXT_AUTO_VERIFY}  20
   wait until page contains  ${TEXT_VIEW_ACCOUNT_DETAILS}

Verify Upcoming Events
   wait until page contains  Hi, Guest
   wait until page contains  Upcoming events
   wait until page contains element  //*[@resource-id="com.scaler.app:id/secondary_cta" and @text="View All"]
   click element  //*[@resource-id="com.scaler.app:id/secondary_cta" and @text="View All"]