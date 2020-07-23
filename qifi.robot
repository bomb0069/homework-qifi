*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
เปิด Qifi
    เปิด Qifi
    พิมพ์ SSID
    พิมพ์ Key
    กดปุ่ม Generate
    รอดู QR
    ปิดหน้าต่าง
*** Keywords ***
เปิด Qifi
    Open Browser    https://qifi.org/    chrome
พิมพ์ SSID
    Input Text    ssid    brightbite   
พิมพ์ Key
    Input Text    key    brightbite
กดปุ่ม Generate
    Press Keys    generate    RETURN
รอดู QR
    Wait Until Page Contains Element    id:qrcode
ปิดหน้าต่าง
    Close Browser 