*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google Chrome
#     Open Browser    https://www.google.co.th    chrome
#     Input Text  q   test100
    เปิดโครมขึ้นมาและเข้า qifi
    กรอกssid&key
    กดสร้างqrcode
    ตรวจสอบqrcode
    ปิดบราวเซอร์
    
*** Keywords ***
เปิดโครมขึ้นมาและเข้า qifi
    Open Browser    https://qifi.org/    chrome
กรอกssid&key
    Input Text    ssid    yuppi
    Input Text    key    yu1234
กดสร้างqrcode
    Press Keys    generate    RETURN
ตรวจสอบqrcode
    Wait Until Page Contains Element    id:qrcode
ปิดบราวเซอร์
    Close Browser