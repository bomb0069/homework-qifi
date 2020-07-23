*** Settings **
Library    SeleniumLibrary

*** Test Cases ***
เข้าเว็บ https://qifi.org/ ผ่าน Chrome
    เปิด Browser ขึ้นมา เข้าที่ไปที่ http://www.google.co.th 
    พิมพ์คำที่ต้องการสืบค้นลงในช่อง search 
    กดปุ่ม google search หรือกด enter 
    ถ้าหาคำที่สืบค้นเจอ คลิกที่ link ที่จะเข้าชม

สร้าง QR code ด้วย SSID และ key กรณีมองเห็น key
    กรอก SSID 
    กรอก key 
    กดปุ่ม Display key
    key ต้องมองเห็น
    กดปุ่ม generate
    รอการแสดง QR code

*** Keywords ***
เปิด Browser ขึ้นมา เข้าที่ไปที่ http://www.google.co.th 
    Open Browser    http://google.co.th    chrome

พิมพ์คำที่ต้องการสืบค้นลงในช่อง search   
    Input Text    q    https://qifi.org/   

กดปุ่ม google search หรือกด enter
    Press Keys    q    RETURN

ถ้าหาคำที่สืบค้นเจอ คลิกที่ link ที่จะเข้าชม
    Click Link   pure JS WiFi QR Code Generator  



กรอก SSID 
    Input Text    ssid     boy
กรอก key 
    Input Text    key    12345
กดปุ่ม Display key
    Click Button    display-key
key ต้องมองเห็น
    Element Should Be Visible     key

กดปุ่ม generate
    Click Button    generate
รอการแสดง QR code
    Wait Until Page Contains    qrcode
