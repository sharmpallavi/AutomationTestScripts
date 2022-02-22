# This script performs the following actions
# Scenario1: Open google search page that contains google search box and google logo

*** Settings ***
library  SeleniumLibrary
Resource  ../Testscripts/Keywords.robot  #To link Tests to keywords file

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/

*** Test Cases ***
AutomationTest

    Openmybrowser                                              # Open browser
    wait until page contains element  ${GoogleLogoXpath}  20s  # wait for codition to be completed
    Page should contain element  ${GoogleLogoXpath}            # Assert that the page contains google logo
    Page should contain element  ${TextInputXpath}             # Assert that the page contains google search box
    sleep  3s                                                  # wait for 3 seconds
    Closemybrowser                                             # Close the browser


