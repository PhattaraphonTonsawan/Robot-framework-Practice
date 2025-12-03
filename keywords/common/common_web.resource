*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Webpage
    [Arguments]    ${url}    ${browser}
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    SeleniumLibrary.Maximize Browser Window

Click Button
    [Arguments]    ${button}
    SeleniumLibrary.Wait Until Element Is Enabled    ${button}
    SeleniumLibrary.Click Element    ${button}

Close Window
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser


