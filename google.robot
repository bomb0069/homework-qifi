*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#tag Test Cases
เปิด Google Chrome
    Open Browser    http://Google.co.th    chrome          #เปิด Browser ไปที่ http://Google.co.th โดย Chrome Browser
    Input Text      q                      neeyalioness    #Input Text <locator><value>

*** Keywords ***
Open Chrome Browser
    Open Browser    http://Google.co.th    chrome
#Input text : ในช่องค้นหา
#กดค้นหา
#ตรวจสอบคำที่ตรงกัน
#เจอผลลัพธ์ ที่ตรงกับที่ค้นหา
#คลิกที่ลิงค์แรกเสมอ เมื่อมีคำค้นหาที่ตรงกัน
#ถ้าไม่มีคำที่ตรงกันเลย ให้หยุดการทำงานค้างไว้ที่หน้าจอค้นหา หรือ ปิดเบราว์เซอร์ลงไป
