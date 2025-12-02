*** Settings ***
Library    SeleniumLibrary
Resource   ../../../../resources/import.resource
Resource   ../pages/LoginPage.resource

*** Keywords ***
User Login to system
    [Arguments]    ${VALID_USER}    ${VALID_PASSWORD}  #Argument คือตัวแปรที่จะส่งเข้ามาในการกรอกไปในช่องกรอกข้อมูล
    Enter Username    ${VALID_USER}
    Enter Password    ${VALID_PASSWORD}
    Click Button    ${LOGIN}
