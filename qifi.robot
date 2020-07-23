*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา
    Go to QiFi
    Input keyword in SSID
    Input keyword in Key
    enter or click generate
    Page contains QR
    Close

 
   

*** Keywords ***
Go to QiFi
    Open Browser    https://qifi.org/#    Chrome

Input keyword in SSID
    Input Text    ssid    abcd

Input keyword in Key
    Input Text    key    def

enter or click generate
    press keys    key    ENTER
Page contains QR
    Page should contain Element    id:qrcode
Close
    Close Browser



