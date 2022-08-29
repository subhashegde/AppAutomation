# AppAutomation

Assignment : Automate Login Flow of Scaler App

Framework : Robot (Keyword Driven Development)

Tools : Appium, PyCharm CE, Pixel 4a device

Used “Apk Info” app to extract Scaler App Package Name, Scaler App Launcher Activity Name

----------------------------------------------------------------------------------
Automation Files : 

	•	Login_Test.robot : This file contains a test automation case. This contains English statements which mentions what is being automated.
	•	Config.py : This file contains all the configs including Appium Path, Scaler App Package Name, Scaler App Launcher Activity Name etc
	•	CommonActions.robot : This file contains all the common keywords used throughout the automation. For now, we have only the App Launch Keyword. This can be extended and we can add more keywords to this file. 
	•	LoginAcions.robot : This file contains all the keywords used for Login automation tests. For now, we have one keyword used for golden flow of LogIn.

---------------------------------------------------------------------------------- 
Desired properties details required to Launch Scaler app through Appium

{
  "platformName": "Android",
  "appium:platformVersion": "12",
  "appium:deviceName": "pixel",
  "appium:automationName": "Appium",
  "appium:app": "/Users/subhasmanjunathhegde/Downloads/fabric-5.45.2-latest.apk",
  "appium:appPackage": "com.scaler.app",
  "appium:appActivity": "com.scaler.app.ui.SplashScreenActivity"
}
----------------------------------------------------------------------------------
Steps to view and RUN automation : 

PreRequisites : 
1. PyCharm CE, 
2. Appium server and Appium inspector (used to find locators)
3. Android SDK
4. JDK
5. Robot framework

Run automation ->
1. Via Terminal : command : robot 
2. Via Pycharm : Right click on the file and Run
