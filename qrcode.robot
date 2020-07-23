*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Generate QR code
    เปิด https://qifi.org/ ด้วย chrome
    กรอก SSID
    กรอก Key
    กดปุ่ม Generate!

**** Keywords ***
เปิด https://qifi.org/ ด้วย chrome
    Open Browser    https://qifi.org    Chrome

กรอก SSID
    Input Text    ssid    Generate

กรอก Key   
    Input Text    key    1234

กดปุ่ม Generate!
    Click button    generate