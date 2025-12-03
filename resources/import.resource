*** Settings ***
Library    SeleniumLibrary
# Global Config
Resource    ${CURDIR}/../keywords/common/common_web.resource
Variables    ${CURDIR}/../resources/setting/setting.yaml
#Element Locators
Resource    ${CURDIR}/locators/changePasswordPage.resource
Resource    ${CURDIR}/locators/loginPage.resource
Resource    ${CURDIR}/locators/UserProfilePage.resource
#Test Data
Variables    ${CURDIR}/../resources/testdata/loginData.yaml
#Keywords
Resource    ${CURDIR}/../keywords/ui/web/feature/login_test.resource
Resource    ${CURDIR}/../keywords/ui/web/feature/changePass.resource
Resource    ${CURDIR}/../keywords/ui/web/pages/ChangePasswordPage.resource
Resource    ${CURDIR}/../keywords/ui/web/pages/LoginPage.resource
Resource    ${CURDIR}/../keywords/ui/web/feature/userAccount.resource

#ใช้ไฟล์นี้เพื่อเป็นจุดรวมการ import เพื่อเรียกใช้ resource อื่นๆในที่เดียว เหมือนเป็นตัวแทนเพื่อนๆ เพื่อติดต่อกับคุณครู ในไฟล์อื่นที่จะเรียกใช้สามารถเรียกใช้แค่ 
#การเรียกใช้ ไฟล์ ../resources/import.resource  