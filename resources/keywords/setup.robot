*** Settings ***
Documentation    Esse arquivo contém a configuração dos testes da web 
Library          SeleniumLibrary
*** Variables ***
${url}=        https://the-internet.herokuapp.com/challenging_dom
${browser}=    firefox

*** Keywords ***
abrir navegador
    Set Selenium Timeout    5s
    Open Browser            url=${url}    browser=${browser}    #    options=use_chromium=True 

fechar navegador
    Capture Page Screenshot    filename=screenshot_end.png
    Close Browser