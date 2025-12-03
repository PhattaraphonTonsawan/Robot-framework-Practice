*** Settings ***
Library    SeleniumLibrary
# Global Config
Resource    ../keywords/common/common_web.resource
Variables    ../resources/setting/setting.yaml
#Element Locators
Resource    locators/changePasswordPage.resource
Resource    locators/loginPage.resource
Resource    locators/UserProfilePage.resource
#Test Data
Variables    ../resources/testdata/loginData.yaml
#Keywords
Resource    ../keywords/ui/web/feature/login_test.resource
Resource    ../keywords/ui/web/feature/changePass.resource
Resource    ../keywords/ui/web/pages/ChangePasswordPage.resource
Resource    ../keywords/ui/web/pages/LoginPage.resource
Resource    ../keywords/ui/web/feature/userAccount.resource

#ใช้ไฟล์นี้เพื่อเป็นจุดรวมการ import เพื่อเรียกใช้ resource อื่นๆในที่เดียว เหมือนเป็นตัวแทนเพื่อนๆ เพื่อติดต่อกับคุณครู ในไฟล์อื่นที่จะเรียกใช้สามารถเรียกใช้แค่ 
#การเรียกใช้ ไฟล์ ../resources/import.resource  