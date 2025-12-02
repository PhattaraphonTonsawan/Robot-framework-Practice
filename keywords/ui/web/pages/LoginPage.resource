*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text     ${USERNAME_FIELD}    ${username}
Enter Password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Input Password    ${PASSWORD_FIELD}    ${password}









