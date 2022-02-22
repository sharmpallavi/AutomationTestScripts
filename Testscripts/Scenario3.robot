# This script performs the following actions
# Scenario3: Open google search page and search for a particular item and once result is loaded click on first result item
#This script takes parameterized input

*** Settings ***
library  SeleniumLibrary
Resource  ../Testscripts/Keywords.robot

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/
${parameter}  Naukri

*** Test Cases ***
AutomationTest
    Openmybrowser
    wait until page contains element  ${GoogleLogoXpath}        # waits until element is visible
    Page should contain element  ${GoogleLogoXpath}             # assert that the page contains google logo
    Page should contain element  ${TextInputXpath}              # assert that the page contains google search box
    EnterInputText  ${parameter}
    ClickOnSearch
    wait until page contains element  ${TextSearchResultXpath}  #wait until search results page is loaded
    Page should contain element  ${TextSearchResultXpath}       #assert that search result page is loaded
    sleep  2s
    ElementAttributedisplay
    ${string1}=  ElementAttributedisplay
    log to console  ${string1}
    ClickOnFirstLink
    GetCurrentPageUrl
    ${string2}=  GetCurrentPageUrl
    log to console  ${string2}
    should be equal  ${string1}  ${string2}
    Closemybrowser


