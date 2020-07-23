*** Settings ***
Library    SeleniumLibrary 

*** Test Cases ***
ค้นหา anchisa ใน Google ผ่าน Chrome
    เปิดโครมขึ้นมา
    ค้นหาคำว่า บิงซูมะม่วง
    คลิกปุ่มค้นหา
    จะต้องพบคำว่า บิงซูมะม่วง ในผลลัพธ์
    คลิก link แรกที่เจอ
    ปิด Browser

*** Keywords ***
เปิดโครมขึ้นมา
    Open Browser    http://google.co.th    chrome

ค้นหาคำว่า บิงซูมะม่วง
    Input Text    q    บิงซูมะม่วง

คลิกปุ่มค้นหา
    Press Keys    q    RETURN

จะต้องพบคำว่า บิงซูมะม่วง ในผลลัพธ์
    Page Should Contain    บิงซูมะม่วง

คลิก link แรกที่เจอ
    Click Element    //*[@id="rso"]/div[3]/div/div[1]/a/h3

ปิด Browser
    Close Browser

