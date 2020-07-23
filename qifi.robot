*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
เปิด Google Chrome
    เปิด Browser และเข้า link
    ใส่ SSID
    ใส่ Key 
    กดปุ่ม Generate โดยการ Enter
    รอการแสดง QR Code
    ปิด Browser
    
*** Keywords ***
เปิด Browser และเข้า link      Open Browser               https://qifi.org/           chrome
ใส่ SSID                     Input Text                  ssid                        WOWOWOWOW
ใส่ Key                      Input Text                  key                         555555555
กดปุ่ม Generate โดยการ Enter  Press Keys                  //*[@id="generate"]         ENTER
รอการแสดง QR Code           Element Should Be Enabled   //*[@id="qrcode"]/canvas
ปิด Browser                  Close Browser