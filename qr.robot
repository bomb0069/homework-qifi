*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
การสร้าง QR Code
    เปิด Google Chrome เข้าลิงก์ https://qifi.org/
    ใส่เลข SSID
    ใส่ Key
    กด Generate และแสดง QR Code
    ปิด Browser

*** Keywords ***
เปิด Google Chrome เข้าลิงก์ https://qifi.org/
    Open Browser    https://qifi.org/    chrome
ใส่เลข SSID
    Input Text      ssid        9396
    Press Keys      ssid        RETURN
ใส่ Key
    Input Text      key         999
    Press Keys      key        RETURN
กด Generate และแสดง QR Code
    Click Element   generate
    Element Should Be Enabled    id:qrcode
ปิด Browser
    Close Browser