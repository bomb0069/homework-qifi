*** Settings ***
Library     Selenium2Library


*** Test Cases ***
Generate QR Wifi โดย https://qifi.org/ ผ่าน Chrome
    เปิด Chrome เข้า https://qifi.org/
    ใส่ SSID
    ใส่ Key
    กดปุ่มGenerate  
    เช็ค QR

*** Keywords ***
เปิด Chrome เข้า https://qifi.org/
    Open Browser    https://qifi.org/   Chrome
ใส่ SSID
    Input Text      ssid      แมว
ใส่ Key
    Input Text      key      cat
กดปุ่มGenerate               
    Click Button    generate  
เช็ค QR
    Wait Until Page Contains Element    id:qrcode
ปิด Chrome
    Close Browser
