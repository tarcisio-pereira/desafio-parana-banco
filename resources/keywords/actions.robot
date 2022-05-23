
*** Settings ***
Documentation    Esse arquivo contém todas as Keywords dos testes da WEB
Library          SeleniumLibrary 

*** Keywords ***
Aguardar a Home Page está visivel
    Wait Until Page Contains    Challenging DOM
    Capture Page Screenshot

Clicar no botão
    [Arguments]                ${name_button}
    Click Element              xpath=//a[@class='${name_button}']
    Capture Page Screenshot

Clicar no texto "${text}"
    @{index}    Create List    1    2    3    4    5    6    7    8    10

    FOR    ${i}    IN    @{index}

    Click Element                   xpath=(//a[@href='#${text}'])[${i}]
    Wait Until Location Contains    https://the-internet.herokuapp.com/challenging_dom#${text}
    Capture Page Screenshot
    Go Back 
    Capture Page Screenshot         
    
    END