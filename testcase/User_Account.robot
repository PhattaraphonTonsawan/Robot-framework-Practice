*** Settings ***
Documentation     ทดสอบการตรวจสอบโปรไฟล์ผู้ใช้
Resource          ../resources/import.resource 

*** Test Cases ***
Show User Profile
    userAccount.Show User Profile
    [Teardown]    Close Window

