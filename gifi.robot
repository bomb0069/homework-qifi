*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#tag Test Cases
เปิด Google Chrome
    Open Chrome Browser + go to link
    Input text : ในช่อง SSID
    Input text : ในช่อง Key
    กดปุ่ม Generate!
    Show QR Code
    Close Chrome Browser


*** Keywords ***
Open Chrome Browser + go to link
    Open Browser    https://qifi.org/    chrome
Input text : ในช่อง SSID
    Input Text    ssid    neeyalioness
Input text : ในช่อง Key
    Input Text    key    23072020day13

กดปุ่ม Generate!
    Click Button    generate
Show QR Code
    Element Should Be Enabled    id:qrcode
Close Chrome Browser
    Close Browser