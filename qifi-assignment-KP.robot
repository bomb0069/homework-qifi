List step for qifi testing
1. เปิดเว็บ qifi ด้วย Chrome browser
2. กรอก SSID ว่า Hello-AZ-2020
3. กรอก Key ว่า P@sSVV0Rd
4. กดปุ่ม Generate!
5. ตรวจสอบ Output: QR Code
6. ปิด Browser

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
List step for qifi testing
    เปิดเว็บ qifi ด้วย Chrome browser
    กรอก SSID ว่า Hello-AZ-2020
    กรอก Key ว่า P@sSVV0Rd
    กดปุ่ม Generate!
    ตรวจสอบ Output: QR Code
    ปิด Browser

*** Keywords ***
เปิดเว็บ qifi ด้วย Chrome browser
    Open Browser    https://qifi.org/    chrome
กรอก SSID ว่า Hello-AZ-2020
    Input Text    id=ssid    Hello-AZ-2020
กรอก Key ว่า P@sSVV0Rd
    Input Text    id=key    P@sSVV0Rd
กดปุ่ม Generate!
    Click Element    id=generate
ตรวจสอบ Output: QR Code
    Wait Until Element Is Enabled    //*[@id="qrcode"]/canvas
ปิด Browser
    Close Browser
