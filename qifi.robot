*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
เปิด QiFi ด้วย Google Chrome
    Open Browser    https://qifi.org    chrome
พิมพ์ SUTHINAN ในช่อง SSID
    Input Text    ssid    SUTHINAN
พิมพ์ MUSITMANI ในช่อง Key
    Input Text    key    MUSITMANI
กด Generate
    Click Element    generate
ดูหน้าเว็บว่ามี QR Code ขึ้นมาไหม
    Element Should Be Enabled    //div//canvas
ปิด Google Chrome
    Close Browser

*** Test Cases ***
สร้าง QR Code ของ SSID: SUTHINAN ด้วย QiFi
    เปิด QiFi ด้วย Google Chrome
    พิมพ์ SUTHINAN ในช่อง SSID
    พิมพ์ MUSITMANI ในช่อง Key
    กด Generate
ดู QR Code ที่ได้
    ดูหน้าเว็บว่ามี QR Code ขึ้นมาไหม
    ปิด Google Chrome