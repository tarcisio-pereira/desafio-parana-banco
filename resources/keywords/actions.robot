
*** Settings ***
Documentation    Esse arquivo contém todas as Keywords dos testes da WEB
Library          SeleniumLibrary 

*** Keywords ***
Wait Home Page visible
    Wait Until Page Contains    Challenging DOM
    Capture Page Screenshot

Clicks button "{name_button}"
    [Arguments]                ${name_button}
    Click Element              xpath=//a[@class='${name_button}']
    Capture Page Screenshot

Clicks button "${text}"
    @{index}    Create List    1    2    3    4    5    6    7    8    9

    FOR    ${i}    IN    @{index}

    Click Element                   xpath=(//a[@href='#${text}'])[${i}]
    Wait Until Location Contains    https://the-internet.herokuapp.com/challenging_dom#${text}
    Capture Page Screenshot
    Go Back 
    Capture Page Screenshot         
    
    END