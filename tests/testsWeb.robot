*** Settings ***
Documentation     Esse arquivo possui os testes executaveis da WEB
Resource          ../resources/keywords/setup.robot
Resource          ../resources/keywords/actions.robot
Suite Setup       abrir navegador 
Suite Teardown    fechar navegador

*** Test Cases ***
[CTW-O1]Clicar no botão Azul
    Aguardar a Home Page está visivel 
    Clicar no botão            button

[CTW-O2]Clicar no botão Vermelho
    Aguardar a Home Page está visivel 
    Clicar no botão            button alert

[CTW-O3]Clicar no botão Verde
    Aguardar a Home Page está visivel 
    Clicar no botão            button success

[CTW-O4]Clicar em todos os botões "edit"
    Aguardar a Home Page está visivel 
    Clicar no texto "edit"     

[CTW-O5]Clicar em todos os botões "delete"
    Aguardar a Home Page está visivel 
    Clicar no texto "delete"    
