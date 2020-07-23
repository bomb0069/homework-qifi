*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
การบ้าน
    เปิด https://qifi.org/
    ใส่ค่าไปในช่อง SSID และ KEY
    กดปุ่ม Generate!
    ดูว่า QR ถูกสร้าง
    ปิดหน้าต่าง

*** Keywords ***
เปิด https://qifi.org/
    Open Browser    https://qifi.org/    chrome
ใส่ค่าไปในช่อง SSID และ KEY
    Input Text    ssid    jjjjjj
    Input Text    key    ooooooo
กดปุ่ม Generate!
    Click Button    generate
ดูว่า QR ถูกสร้าง
    Page Should Contain Element    qrcode
ปิดหน้าต่าง
    Close Window