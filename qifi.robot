*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิด QiFi ด้วย Google Chrome
Test Template    สร้าง QR Code ใน QiFi
Test Teardown    ปิด Google Chrome

*** Test Cases ***
สร้าง QR Code ของ SUTHINAN ใน QiFi    SUTHINAN    MUSITMANI
    
