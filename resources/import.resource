*** Settings ***
Library    SeleniumLibrary

# Global Config
Resource    global.resource

#Element Locators
Resource    pages/changePasswordPage.resource
Resource    pages/loginPage.resource
Resource    pages/UserProfilePage.resource

#Keywords
Resource    ../keywords/changePass.resource
Resource    ../keywords/common.resource
Resource    ../keywords/login_test.resource

#ใช้ไฟล์นี้เพื่อเป็นจุดรวมการ import เพื่อเรียกใช้ resource อื่นๆในที่เดียว เหมือนเป็นตัวแทนเพื่อนๆ เพื่อติดต่อกับคุณครู ในไฟล์อื่นที่จะเรียกใช้สามารถเรียกใช้แค่ 
#การเรียกใช้ ไฟล์ ../resources/import.resource  