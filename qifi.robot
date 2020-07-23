*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
qifi test
    open qifi link
    ใส่ ssid
    ใส่key
    กดgen
    check qr code

*** Keywords ***
open qifi link
    Open Browser    https://qifi.org/    chrome
ใส่ ssid
    Input Text    ssid    kerati 
ใส่key
    Input Text    key    kasisuwan
กดgen
    Press keys    generate    ENTER
check qr code
    Element Should Be Enabled    id:qrcode
