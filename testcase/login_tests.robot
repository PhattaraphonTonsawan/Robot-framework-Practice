*** Settings ***
Documentation     ทดสอบการล็อกอิน
Library           SeleniumLibrary
Resource          ../resources/import.resource
*** Test Cases ***
Login with correct user & password
    [Documentation]    ทดสอบล็อกอินสำเร็จเมื่อกรอกข้อมูลถูกต้อง
    [Tags]             Login Positive  #Tags ใช้สำหรับแยกรันในกรณีที่ต้องการทดสอบการรันทีละเคส  
    Open Webpage    ${URL}    ${BROWSER}
    Click Button    ${GOTO_LOGINPAGE_BUTTON}
    Switch Window   NEW    #ให้ Selenium ย้ายไปทำงานที่ Tab ใหม่ที่สร้างขึ้นมา  หากอยากกลับมาหน้าหลัก ให้เปลี่ยน NEW -> MAIN
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login to system    ${VALID_USER}    ${VAILD_PASSWORD}
    Wait Until Element Is Visible  ${DASHBOARD_HEADER}  3s
    [Teardown]    Close Window

Login with incorrect Username or Password
    [Documentation]    ทดสอบการล็อกอินหากผู้ใช้กรอกชื่อผู้ใช้หรือรหัสผ่านผิด
    [Tags]             Login Negative 
    Open Webpage    ${URL}    ${BROWSER}
    Click Button    ${GOTO_LOGINPAGE_BUTTON}
    Switch Window   NEW    
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login to system    ${INVAILD_USERNAME}    ${INVAILD_PASSWORD}
    Wait Until Element Is Visible    ${LOGIN_ALERT}    5s
    [Teardown]    Close Window
    










