*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ทดสอบ qifi ใน Google Chrome ผ่าน Chrome
    เปิดกูเกิลโครมขึ้นมา เข้า URL qifi.org
    ใส่ข้อความ SSID
    ใส่ข้อความ password
    กดปุ่ม Enter
    รอ qr code ปรากฏ
    ปิด

*** Keywords ***
เปิดกูเกิลโครมขึ้นมา เข้า URL qifi.org
    Open Browser    https://qifi.org/    chrome
ใส่ข้อความ SSID
    Input Text    ssid    sck-dojo
ใส่ข้อความ password
    Input Text    key    shuhari
กดปุ่ม Enter
    Press Keys         key                                 RETURN
รอ qr code ปรากฏ
    Wait Until Page Contains Element    id:qrcode    limit=1
ปิด
    Close Browser
