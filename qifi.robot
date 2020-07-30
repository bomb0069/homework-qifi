*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิด QiFi ด้วย Google Chrome
Test Template    สร้าง QR Code ใน QiFi
Test Teardown    ปิด Google Chrome

*** Variables ***
${SSID}    SUTHINAN
${KEY}    MUSITMANI

*** Test Cases ***
สร้าง QR Code ของ ${SSID} ใน QiFi    ${SSID}    ${KEY}
สร้าง QR Code ของ POTAE ใน QiFi    POTAE    SM