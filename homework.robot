*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ทดสอบเว็บ qifi
    เปิดเว็ป qifi ด้วย Google Chrome
    กรอกชื่อ wifi
    กรอกรหัส wifi
    กดปุ่มสร้าง QR Code
    เช็คว่ามี QR Code หรือไม่
    ปิดเว็บ
*** Keywords ***
เปิดเว็ป qifi ด้วย Google Chrome
    Open Browser    https://qifi.org/    chrome
กรอกชื่อ wifi
    Input Text    ssid    wifi
กรอกรหัส wifi
    Input Text    key    1234
กดปุ่มสร้าง QR Code
    Click Element    generate
เช็คว่ามี QR Code หรือไม่
    Wait Until Element Is Visible    //*[@id="qrcode"]/canvas
ปิดเว็บ
    Close Browser