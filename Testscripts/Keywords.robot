*** Settings ***
library  SeleniumLibrary
Variables  ../Testscripts/Locators.py

*** Keywords ***
Openmybrowser
    Open browser  ${url}  ${browser}
    sleep  2s
    Maximize browser window
EnterInputText
    [Arguments]  ${Text}
    input text  ${TextInputXpath}  ${Text}
    sleep  2s
ClickOnSearch
    click button  ${SearchButtonXpath}
    sleep  3s
ClickOnFirstLink
    click element  ${ClickLinkXpath}
    sleep  3s
Closemybrowser
    close browser