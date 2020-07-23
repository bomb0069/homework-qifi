** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
สร้าง QR Code
    ไปยังเว็บไซต์ qifi.org
    กรอก SSID
    กรอก Key
    กดปุ่ม Generate
    check Qr Code
    ปิด Google chrome

*** Keywords ***
ไปยังเว็บไซต์ qifi.org
    Open Browser    http://www.qifi.org    chrome
กรอก SSID
    Input Text    ssid    pamuta
กรอก Key
    Input Text    key    keawjit
กดปุ่ม Generate 
    Click Element    generate
check Qr Code
    Page Should Contain Element    export
ปิด Google chrome
    Close Browser