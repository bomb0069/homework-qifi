*** Settings ***
Library    SeleniumLibrary
Test Setup    เปิด QiFi ด้วย Google Chrome
Test Template    สร้าง QR Code ใน QiFi
Test Teardown    ปิด Google Chrome

*** Variables ***
${URL}    https://qifi.org

*** Keywords ***
เปิด QiFi ด้วย Google Chrome
    Open Browser    https://qifi.org    chrome
พิมพ์ในช่อง SSID
    [Arguments]    ${SSID}
    Input Text    ssid    ${SSID}
พิมพ์ในช่อง Key
    [Arguments]    ${KEY}
    Input Text    key    ${KEY}
กด Generate
    Click Element    generate
ดูหน้าเว็บว่ามี QR Code ขึ้นมาไหม
    Element Should Be Enabled    //div//canvas
ปิด Google Chrome
    Close Browser
สร้าง QR Code ใน QiFi
    [Arguments]    ${SSID}    ${KEY}
    พิมพ์ในช่อง SSID    ${SSID}
    พิมพ์ในช่อง Key    ${KEY}
    กด Generate
    ดูหน้าเว็บว่ามี QR Code ขึ้นมาไหม

*** Test Cases ***
สร้าง QR Code ของ SUTHINAN ใน QiFi    SUTHINAN    MUSITMANI
    
