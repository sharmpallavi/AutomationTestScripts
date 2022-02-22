# TestAutomation
Configuration settings:
1. Install Python 3.9.1
2. Set the environment variable for python interpreter
3. Install selenium and robotframework packages 
	Go to python installation directory, open scripts folder, launch command prompt inside scripts folder, enter the below commands:
	a. pip install selenium
	b. pip install robotframework
	c. pip install robotframework-seleniumlibrary
4. Download the chromedriver and copy it inside scripts folder in the python installation directory 

-------------------------------------------------------------------------------------------------------

Information:
1. The automation implementation is according to PAGE OBJECT Model design pattern
2. POM is a design pattern where we seperate the locators, keywords and test steps
3. Locators file contains all the locators
4. Keywords files contains user defined keywords which is used in test script
5. Test script file contains actual test steps

-------------------------------------------------------------------------------------------------------

Execution:
1. Go to project folder 
2. Open test scripts folders and run the following command:
	robot scriptname.robot

--------------------------------------------------------------------------------------------------------
	