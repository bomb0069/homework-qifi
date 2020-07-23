*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
เปิด Google Chrome
    เปิด Browser และเข้า link
    กรอกสิ่งที่ต้องการค้นหา
    กด ENTER เพื่อค้นหา
    รอมันทำการโหลดจนเสร็จ
    เข้าไปลิงค์ที่ต้องการ
    ปิดบราวเซอร์
 
    
*** Keywords ***
เปิด Browser และเข้า link   Open Browser                       https://qifi.org/     chrome
กรอกสิ่งที่ต้องการค้นหา        Input Text                         q                           เทสๆๆๆๆ
กด ENTER เพื่อค้นหา         Press Keys                         q                           ENTER
รอมันทำการโหลดจนเสร็จ      Page Should Contain                 ผลการค้นหาประมาณ                                           
เข้าไปลิงค์ที่ต้องการ          Click Element                      //*[@id="rso"]/div[4]/div/div[1]/a/h3              ENTER            
ปิดบราวเซอร์               Close Browser