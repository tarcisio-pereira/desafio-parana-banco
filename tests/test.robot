*** Settings ***
Resource              ../resources/keywords/setup.robot
Resource              ../resources/keywords/actions.robot
Suite Setup            abrir navegador 
Suite Teardown         fechar navegador

*** Test Cases *** 
Caso de Teste 01 
   Wait Home Page visible 
   Clicks button "{name_button}"    button

Caso de Teste 02 
   Wait Home Page visible 
   Clicks button "{name_button}"    button alert

Caso de Teste 03 
   Wait Home Page visible 
   Clicks button "{name_button}"    button success

Caso de Teste 04   
    Wait Home Page visible 
    Clicks button "edit"    

Caso de Teste 05
    Wait Home Page visible 
    Clicks button "delete"    
