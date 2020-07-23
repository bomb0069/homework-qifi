*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา kasetsart ใน Google ผ่าน chrome
    เปิด chrome browser ขึ้นมา เข้า qifi.org
    กรอก SSID bugbigz
    กรอก Key 43211234
    กด Generate
    ตรวจสอบว่ามี QR code
    ปิดหน้าเว็บ

*** Keywords ***
เปิด chrome browser ขึ้นมา เข้า qifi.org
    Open Browser    https://qifi.org/    chrome

กรอก SSID bugbigz
    Input Text    ssid    bugbigz

กรอก Key 43211234
    Input Text    key    43211234

กด Generate
    Press Keys    generate    ENTER 

ตรวจสอบว่ามี QR code
    Wait Until Page Contains    qrcode    2

ปิดหน้าเว็บ
    Close Browser