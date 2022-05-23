*** Settings ***
Documentation    Esse arquivo possui os testes executaveis da API 
Resource         ../resources/keywords/actionsAPI.robot
Suite Setup      Conectar a API 

*** Test Cases ***
[CTA-01]Pesquisar usuário
    Buscar usuários

[CTA-02]Pesquisar usuário por filtro
    Buscar usuário filtro id    1

[CTA-03]Criar usuário
    Cadastrar usuário

[CTA-04]Excluir usuário
    Deletar usuário

[CTA-05]Atualizar usuário
    [Tags]    test
    Alterar usuário

