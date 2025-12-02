*** Settings ***
Library    SeleniumLibrary

# Global Config
Resource    ../keywords/common/common_web.resource
#Element Locators
Resource    locators/changePasswordPage.resource
Resource    locators/loginPage.resource
Resource    locators/UserProfilePage.resource
#Test Data
Resource    testdata/commonData.resource
Resource    testdata/loginData.resource
#Keywords
Resource    ../keywords/ui/web/feature/login_test.resource
Resource    ../keywords/ui/web/feature/changePass.resource

#ใช้ไฟล์นี้เพื่อเป็นจุดรวมการ import เพื่อเรียกใช้ resource อื่นๆในที่เดียว เหมือนเป็นตัวแทนเพื่อนๆ เพื่อติดต่อกับคุณครู ในไฟล์อื่นที่จะเรียกใช้สามารถเรียกใช้แค่ 
#การเรียกใช้ ไฟล์ ../resources/import.resource  