*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Wait until and input text
    [Arguments]    ${locator}    ${data}
    Wait Until Keyword Succeeds    3x    3s    Input Text    ${locator}    ${data}  

Wait until and Click Element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    3s    Click Element    ${locator}

Wait until and Select Radio Button
    [Arguments]    ${locator}    ${data}
    Wait Until Keyword Succeeds    3x    3s    Select Radio Button    ${locator}    ${data}