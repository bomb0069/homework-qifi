*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
เข้า qifi ใน Browser
    Open Browser    https://qifi.org/    Chrome
    Input Text    ssid    beckky
    Input Text    key    beck
    Click button    generate
    Wait Until Element Is Enabled    id:qrcode    
    Close Browser

*** Keywords ***
เข้า qifi ใน Browser
    Open Browser    https://qifi.org/    Chrome
กรอก SSID
    Input Text    ssid    beckky
กรอก Key
    Input Text    key    beck
กดปุ่ม generate
    Click button    generate
check qr code
    Wait Until Element Is Enabled    id:qrcode
Close
    Close Browser
