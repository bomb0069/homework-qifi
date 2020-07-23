*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ทดสอบการ Generate QR code สำหรับเข้า Wi-fi 
    เปิดเว็บ Generate
    พิมพ์ชื่อ Wi-fi
    พิมพ์รหัส Wi-fi
    กด Generate
    รอจนมี qr code ขึ้นมา
    ปิด Browser

*** Keywords ***
เปิดเว็บ Generate
    Open Browser    https://qifi.org/    chrome
พิมพ์ชื่อ Wi-fi
    Input Text    ssid    wattana-wifi
พิมพ์รหัส Wi-fi
    Input Text    key    5555
กด Generate
    Press Keys    generate    ENTER
รอจนมี qr code ขึ้นมา
    Wait Until Element Is Visible     id:qrcode
ปิด Browser
    Close Browser