*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
กรอกค่า ssid กับ password ใน qifi ผ่าน Chrome
    เปิด google chrome เข้าเว็บ qifi.org/
    พิมพ์ ssid
    พิมพ์ password
    กด generate
    รอให้ qr code ขึ้นมา
    ปิดหน้าต่าง

*** Keywords ***
เปิด google chrome เข้าเว็บ qifi.org/
    Open Browser    https://qifi.org/    Chrome

พิมพ์ ssid
    Input Text    ssid    veeraphat-wifi


พิมพ์ password
    Input Text    key    hello123

กด generate
    Click Button    Generate!

รอให้ qr code ขึ้นมา
    Wait Until Page Contains    qrcode

ปิดหน้าต่าง
    Close Browser