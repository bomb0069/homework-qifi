*** Settings ***
Library    SeleniumLibrary 

*** Test Cases ***
Generate Qifi wifi
    เปิดเข้าหน้าเว็บ browser
    ใส่ SSID
    ใส่ Key
    กด Generate
    เช็ค QR code
    

*** Keywords ***

เปิดเข้าหน้าเว็บ browser
    Open Browser    https://qifi.org/    Chrome

ใส่ SSID
    Input Text    ssid    anchisa

ใส่ Key
    Input Text    key    fah

กด Generate
    Press keys    generate    ENTER

เช็ค QR code
    Element Should Be Enabled    id:qrcode



