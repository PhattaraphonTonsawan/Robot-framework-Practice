*** Settings ***
Documentation     ทดสอบการตรวจสอบโปรไฟล์ผู้ใช้
Library           SeleniumLibrary
Resource          ../resources/import.resource 

*** Test Cases ***
Show User Profile
    Open Webpage        ${URL}    ${BROWSER} 
    Click Button        ${GOTO_LOGINPAGE_BUTTON} 
    Switch Window   NEW  
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login to system    ${VALID_USER}    ${VAILD_PASSWORD}
    Wait Until Element Is Visible  ${DASHBOARD_HEADER}  3s
    Click Button    ${USER_PROFILE_MENU}
    Wait Until Element Is Enabled    ${ACCOUNT_MENU}    3s
    Click Button    ${ACCOUNT_MENU}
    Wait Until Element Is Visible    id=account    10s
    [Teardown]    Close Window

