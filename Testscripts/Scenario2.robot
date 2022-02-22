# This script performs the following actions
# Scenario2: Open google search page and search for a particular item

*** Settings ***
library  SeleniumLibrary
Resource  ../Testscripts/Keywords.robot

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/

*** Test Cases ***
AutomationTest
    Openmybrowser                                               # Open browser
    wait until page contains element  ${GoogleLogoXpath}        # wait until the element is visible
    Page should contain element  ${GoogleLogoXpath}             # Assert that the page contains google logo
    Page should contain element  ${TextInputXpath}              # Assert that the page contains google search box
    EnterInputText  Naukri                                      # Enter the item name to be searched
    ClickOnSearch                                               # Click on search button
    wait until page contains element  ${TextSearchResultXpath}  # wait until search results are visible
    Page should contain element  ${TextSearchResultXpath}       # Assert that the page contains the serached item links
    sleep  2s                                                   # Wait for 2 second
    closemybrowser                                              # Close the browser