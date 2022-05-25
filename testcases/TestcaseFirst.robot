*** Settings ***
Library    SeleniumLibrary
Library     BuiltIn

***Variables***
${browser}    chrome
${url}        https://www.google.com/

*** Test Cases ***
MyFirstTest
    Log     Hello World!
    Log To Console    Hiiii!!    
    
FirstSeleniumTestCase  
    Open Browser    ${url}    ${browser}
    GoogleSearch   
    Close Browser
    Log    Test Completed    


    

***Keywords***
GoogleSearch
    Set Browser Implicit Wait    5sec
    Input Text      name=q      Automation Step By Step 
    Click Button    name=btnK     
    Sleep    2