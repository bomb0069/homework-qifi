*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
นำ QR code
    เปิดเว็บที่ต้องการ
    ใส่ input ssid และ key
    กดปุ่ม generate
    เช็คว่ามี QR code ไหม
    ปิดโครม

*** Keywords ***
เปิดเว็บที่ต้องการ
    Open Browser    https://qifi.org/#    chrome
ใส่ input ssid และ key
    Input Text    ssid    nearnear
    Input Text    key    123456
กดปุ่ม generate
    Click Element    id:generate
เช็คว่ามี QR code ไหม
    Element Should Be Enabled    id=qrcode
ปิดโครม
    Close Browser
