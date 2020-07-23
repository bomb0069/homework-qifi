*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

เปิด Google Chrome แล้วเข้า URL qifi.org
    Open Browser    https://qifi.org    gc

พิมพ์ Test-Wifi ที่ต้องการค้นหาลงในช่อง SSID
    Input Text    ssid   Test-Wifi

พิมพ์ 123456 ที่ต้องการค้นหาลงในช่อง Key
    Input Text    key   123456

คลิก Generate
    Click Button    generate

เช็ค QR Code
    Page Should Contain Element    qrcode

*** Test Cases ***

Step 1
    Open Browser    https://qifi.org    gc

Step 2
    Input Text    ssid   Test-Wifi

Step 3
    Input Text    key   123456

Step 4
    Click Button    generate

Step 5
    Page Should Contain Element    id=qrcode
