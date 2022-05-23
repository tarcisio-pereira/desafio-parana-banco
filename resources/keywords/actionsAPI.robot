*** Settings ***
Documentation    Documentação da API:                                        http://jsonplaceholder.typicode.com/users
...              Esse arquivo contém todas as Keywords dos testes da API 
Library          RequestsLibrary
Library          Collections
Library          OperatingSystem
Library          String
Library          JsonValidator

*** Variables ***
${URI}=    http://jsonplaceholder.typicode.com/users
*** Keywords ***
Conectar a API
    Create Session    alias=jsonPlaceholderAPI    url=${URI}

Buscar usuários
    ${resposta}         GET On Session      jsonPlaceholderAPI    url=${URI}    expected_status=any 
    Status Should Be    200                 ${resposta}
    Log                 ${resposta.text}
    Validate Jsonschema From File    ${resposta.json()}    ${CURDIR}/../resourcesJson/jsonShemaBuscar.json

Buscar usuário filtro id
    [Arguments]         ${id}
    ${resposta}         GET On Session      jsonPlaceholderAPI      
    ...                 url=${URI}/1        expected_status=any 
    Log                 ${resposta.text}
    Status Should Be    200                 ${resposta}
    Validate Jsonschema From File    ${resposta.json()}    ${CURDIR}/../resourcesJson/jsonShemaBuscarFiltrar.json
    
Cadastrar usuário
    ${body}             Get File              ${CURDIR}/../resourcesJson/cadastrar.json
    ${body}             Format String         ${body}
    ${headers}          Create Dictionary     content-type=application/json
    ${resposta}         POST On Session       jsonPlaceholderAPI                           
    ...                 url=${URI}            expected_status=201
    ...                 headers=${headers}
    ...                 data=${body}
    Status Should Be    201                   ${resposta}
    Log                 ${resposta.text}
    Validate Jsonschema From File    ${resposta.json()}    ${CURDIR}/../resourcesJson/jsonShemaCadastrar.json

Deletar usuário
    ${resposta}         DELETE On Session    jsonPlaceholderAPI     
    ...                 url=${URI}/1         expected_status=any
    Status Should Be    200                  ${resposta}
    Log                 ${resposta.text}

Alterar usuário
    ${body}             Get File              ${CURDIR}/../resourcesJson/atualizar.json
    ${body}             Format String         ${body}
    ${headers}          Create Dictionary     content-type=application/json
    ${resposta}         PUT On Session        jsonPlaceholderAPI                           
    ...                 url=${URI}/1          expected_status=200
    ...                 headers=${headers}
    ...                 data=${body}
    Status Should Be    200                   ${resposta}
    Log                 ${resposta.text}
    Validate Jsonschema From File    ${resposta.json()}    ${CURDIR}/../resourcesJson/jsonShemaAlterar.json