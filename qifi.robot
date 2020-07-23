*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
การสร้าง QR Code
    เปิด qifi web Browser ขึ้นมา
    ใส่เลข SSID
    ใส่ Key
    กด Generate และแสดง QR Code
    ปิด Browser

*** Keywords ***
เปิด qifi web Browser ขึ้นมา
    Open Browser    https://qifi.org/    chrome
ใส่เลข SSID
    Input Text    ssid    Private Only
ใส่ Key
    Input Text    key    88888888
กด Generate และแสดง QR Code
    press keys    generate    ENTER
    Element Should Be Enabled    id:qrcode
ปิด Browser
    Close Browser






