*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Generate QRcode Wifi
    เปิด google chrome browser เข้า qifi.org 
    ใส่ SSID
    ใส่ Key
    คลิก Generate!
    Check QR code
    ปิด 

*** Keywords ***
เปิด google chrome browser เข้า qifi.org
    Open Browser    http://qifi.org    chrome
ใส่ SSID
    Input Text    ssid    Anthikaji
ใส่ Key
    Input Text    key    123456
คลิก Generate!
    Click Button    generate
Check QR code
    Page Should Contain Element    qrcode
ปิด
    Close Browser 

