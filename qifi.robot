*** Settings ***
Library    SeleniumLibrary

*** Test Case ***
สร้าง qr code ใน qifi.org
    เปิด qifi.org ขึ้นมา
    กรอกค่า 2 ค่า
    กดปุ่ม generate!
    รอจนแสดง qr code
    ปิด browser

*** Keywords ***
เปิด qifi.org ขึ้นมา
    Open Browser    https://qifi.org/    chrome

กรอกค่า 2 ค่า
    Input Text    ssid    chutimon
    Input Text    key    125259

กดปุ่ม generate!
    Click Button    generate

รอจนแสดง qr code
    Wait Until Page Contains Element    id=qrcode   limit=1

ปิด browser
    Close Browser
