*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Enter OldPassword
    [Arguments]    ${oldPassword}
    Wait Until Element Is Visible    ${OLD_PASSWORD_FIELD} 
    Input Text     ${OLD_PASSWORD_FIELD}     ${oldPassword}
Enter NewPassword
    [Arguments]    ${npassword}
    Wait Until Element Is Visible    ${NEW_PASSWORD_FIELD}
    Input Password    ${NEW_PASSWORD_FIELD}   ${npassword}
Enter ConfirmPassword
    [Arguments]    ${cpassword}
    Wait Until Element Is Visible    ${CONFIRM_PASSWORD_FIELD} 
    Input Password    ${CONFIRM_PASSWORD_FIELD}    ${cpassword}


    