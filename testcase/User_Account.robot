*** Settings ***
Documentation     ทดสอบการตรวจสอบโปรไฟล์ผู้ใช้
Resource          ${CURDIR}/../resources/import.resource

*** Test Cases ***
Show User Profile
    userAccount.Show User Profile
    [Teardown]    common_web.Close Window

