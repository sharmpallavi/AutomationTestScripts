# This script performs the following actions
# Scenario3: Open google search page and search for a particular item and once result is loaded click on first result item

*** Settings ***
library  SeleniumLibrary
Resource  ../Testscripts/Keywords.robot

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/

*** Test Cases ***
AutomationTest
    Openmybrowser
    wait until page contains element  ${GoogleLogoXpath}  20s
    Page should contain element  ${GoogleLogoXpath}
    Page should contain element  ${TextInputXpath}
    EnterInputText  Naukri
    ClickOnSearch
    wait until page contains element  ${TextSearchResultXpath}
    Page should contain element  ${TextSearchResultXpath}
    sleep  2s
    ClickOnFirstLink
    Closemybrowser


