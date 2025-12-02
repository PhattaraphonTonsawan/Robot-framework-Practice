*** Settings ***
Library    SeleniumLibrary
Resource    ../../../../resources/import.resource
Resource    ../pages/ChangePasswordPage.resource

*** Keywords ***
Change Password
    [Arguments]    ${OldPassword}    ${NewPassword}    ${ConfirmPassword}
    Enter OldPassword    ${OldPassword}
    Enter NewPassword    ${NewPassword}
    Enter ConfirmPassword    ${ConfirmPassword}
    Wait Until Element Is Enabled    ${UPDATE_BUTTON}    10s
    Click Button  ${UPDATE_BUTTON}
    Wait Until Element Is Visible    ${CONFIRM_BUTTON}    10s
    Click Button    ${CONFIRM_BUTTON}

Change Password Back to Defult 
    Change Password        ${NEW_PASSWORD}    ${VAILD_PASSWORD}    ${VAILD_PASSWORD} 


    