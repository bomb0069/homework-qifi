*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
สร้างQR Code
    เปิดโครมเข้า URL qifi.org
    ใส่SSID
    ใส่Key
    กดปุ่มGenerate
    Check QR Code
    ปิด

*** Keywords ***
เปิดโครมเข้า URL qifi.org
    Open Browser    https://qifi.org/    chrome
ใส่SSID
    Input Text    ssid    ratthawan
ใส่Key
    Input Text    key    Ratthawan
กดปุ่มGenerate
    Click Button    generate
Check QR Code
    Page Should Contain Element    qrcode
    Get Selenium Implicit Wait
ปิด
    Close Browser