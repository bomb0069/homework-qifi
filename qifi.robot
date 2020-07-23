*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
การสร้าง QR Code
    เปิด Google Chrome เข้าลิงก์
    ใส่เลข SSID
    ใส่ Key
    กด Generate และแสดง QR Code
    ปิด Browser
   
*** Keywords ***   
เปิด Google Chrome เข้าลิงก์ 
    Open Browser    https://qifi.org/    chrome
ใส่เลข SSID
    Input text    ssid    kkkkanun
ใส่ Key
    Input text    key    kkkanunnnn
กด Generate และแสดง QR Code
    Press Keys    generate    ENTER
ปิด Browser
    Close Browser
