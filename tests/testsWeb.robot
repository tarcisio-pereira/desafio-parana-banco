*** Settings ***
Documentation     Esse arquivo possui os testes executaveis da WEB
Resource          ../resources/keywords/setup.robot
Resource          ../resources/keywords/actions.robot
Suite Setup       abrir navegador 
Suite Teardown    fechar navegador

*** Test Cases ***
[CTW-O1]Clicar no botão Azul
    Wait Home Page visible 
    Clicks button "{name_button}"    button

[CTW-O2]Clicar no botão Vermelho
    Wait Home Page visible 
    Clicks button "{name_button}"    button alert

[CTW-O3]Clicar no botão Verde
    Wait Home Page visible 
    Clicks button "{name_button}"    button success

[CTW-O4]Clicar em todos os botões "edit"
    Wait Home Page visible 
    Clicks button "edit"       

[CTW-O5]Clicar em todos os botões "delete"
    Wait Home Page visible 
    Clicks button "delete"     
