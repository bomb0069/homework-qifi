*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#tag Test Cases
เปิด Google Chrome
    Open Chrome Browser
    Input text : ในช่องค้นหา
    กดค้นหา
    คลิกที่ลิงค์แรกเสมอ เมื่อมีคำค้นหาที่ตรงกัน เปิดหน้าเว็บ
    ถ้าไม่มีคำที่ตรงกันเลย ให้หยุดการทำงานค้างไว้ที่หน้าจอค้นหา หรือ ปิดเบราว์เซอร์ลงไป
*** Keywords ***
Open Chrome Browser
    Open Browser    http://Google.co.th    chrome
Input text : ในช่องค้นหา
    Input Text    q    neeyalioness    #Input Text <locator><value>
กดค้นหา
    Press Keys    q    RETURN

คลิกที่ลิงค์แรกเสมอ เมื่อมีคำค้นหาที่ตรงกัน เปิดหน้าเว็บ
    #Click Element    class:g
    Click Link    //*[@id="rso"]/div[1]/div/div[1]/a
ถ้าไม่มีคำที่ตรงกันเลย ให้หยุดการทำงานค้างไว้ที่หน้าจอค้นหา หรือ ปิดเบราว์เซอร์ลงไป
    Close Browser
