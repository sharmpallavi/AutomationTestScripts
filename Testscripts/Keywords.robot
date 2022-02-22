*** Settings ***
library  SeleniumLibrary
Variables  ../Testscripts/Locators.py       #to link keywords to locators file

*** Keywords ***
Openmybrowser
    Open browser  ${url}  ${browser}        # open browser
    sleep  2s                               # wait for 2 second
    Maximize browser window                 # maximize browser window
EnterInputText
    [Arguments]  ${Text}
    input text  ${TextInputXpath}  ${Text}  # enter input in search box
    sleep  2s
ClickOnSearch
    click button  ${SearchButtonXpath}      # click search button
    sleep  3s
ClickOnFirstLink
    click element  ${ClickLinkXpath}        #Click first link in result page
    # wait until page contains element  ${ElementXpath}  20s
    sleep  20s
ElementAttributedisplay
     ${url}=  get element attribute   ${ParentNode}  href
    ${str1}=  convert to string  ${url}
    sleep  2s
    [return]  ${str1}
GetCurrentPageUrl
    ${url1}=   Get Location
    ${str2}=  convert to string  ${url1}
    sleep  2s
    [return]  ${str2}
Closemybrowser
    close browser                           # close browser