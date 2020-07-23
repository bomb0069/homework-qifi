*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ขนม ใน google ผ่าน Chrome
    เปิดลิ้ง
    กรอกข้อมูล
    กด generate
   
*** Keywords ***   
เปิดลิ้ง
    Open Browser    https://qifi.org    chrome
กรอกข้อมูล
    Input text    ssid    kkkanun
    Input text    key    1111111
กด generate
    Press Keys    generate
