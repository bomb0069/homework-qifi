*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Generate QR Testing
    เปิด Browser แล้วไปที่ https://qifi.org/
    ใส่ SSDI natthawit-wifi
    ใส่ password 12345678
    คลิกปุ่ม generate QR
    เช็คว่าหน้า page มี qr code ที่ถูก generate มา
    ปิด Browser

     
    
        

*** Keywords ***
เปิด Browser แล้วไปที่ https://qifi.org/
    Open Browser    https://qifi.org/    chrome
ใส่ SSDI natthawit-wifi
    Input Text    ssid    natthawit-wifi
ใส่ password 12345678
    Input Text    key    12345678
คลิกปุ่ม generate QR
    Click Element    id:generate
เช็คว่าหน้า page มี qr code ที่ถูก generate มา
    Page Should Contain Element    id:qrcode    limit=1
ปิด Browser
    Close Browser


    