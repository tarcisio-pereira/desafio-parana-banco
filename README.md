#   Desafio Parana Banco 
  
  O projeto ultiliza o Robotframework como estrutura genérica de automação de teste, as principais bibliotecas são SeleniumLibrary para os testes WEB e RequestLibrary para os testes de API 
  
## Instalação 
1.
 - Instale o Python e pip 
 - Configure o Python as variáveis de ambiente
 - `python --version`
 - `pip3 -- version`

 - Site de apoio: https://medium.com/@rafasousa/fazer-seu-primeiro-script-de-teste-automatizado-com-robot-framework-8f6f254cc738

2. 
Adiconar as bibliotecas:
## Principais Bibliotecas
  - `pip isntall robotframework`
  - `pip isntall robotframework-seleniumlibrary`
  - `pip isntall robotframework-requests`
  - `pip isntall robotframework-jsonschemalibrary`
  - `pip isntall robotframework-jsonvalidator`
   
3. 
[Recomendado] Baixar o webdriver do navegador fixefox (O projeto está configurado para rodar no navegador do firefox) 
   - Verifique a versão do seu navegador 
   - Baixar o driver compativel com o seu navegador  https://github.com/mozilla/geckodriver
   - Adicionar o arquivo no direório C:\Users\user.nome\AppData\Local\Programs\Python\Python39


 Baixar o webdriver do navegador Google Chrome (Caso deseje rodar no chrome deve alterar a variável ${browser} de firefox para gc) 
   - Verifique a versão do seu navegador 
   - Baixar o driver compativel com o seu navegador  https://chromedriver.chromium.org/
   - Adicionar o arquivo no direório  C:\Users\name.user\AppData\Local\Programs\Python\Python39 

  Obs:O Webdriver instalado deve ser do navegador que deseja rodar os seus testes, cada navegador possui seu webdriver de acordo com a sua versão 
4.

## Execução de testes 

`robot -d testsresults  <dir> <path>/<to>/<file>.robot`

- Executar todos os testes
`robot -d testsresults  tests/`

- -d | para guardar o resultado dentro da pasta testsresults
- -i | para executar os testes que tem a tag        ex: ` robot -d testsresults -i <tag> <dir> <path>/<to>/<file>.robot`
- -e | para não executar os testes que tem a tag    ex: `robot -d testsresults -e <tag> <dir> <path>/<to>/<file>.robot`
- -t | para executar somente um teste da suíte      ex: `robot -d testsresults -t <"name_testcase"> <dir> <path>/<to>/<file>.robot`
- -V | para "setar" uma variável no momento da excução do teste  
 ...   ex: `robot -V Browser:Firefox -d testsresults -t <"name_testcase"> <dir> <path>/<to>/<file>.robot`
## Arquitetura do Projeto

├── desafio-parana-banco                  
   &emsp;├── desafio                                # Diretório com o Desafio 1 e uma collection do postman com todos os testes de status code e aderência de contrato.<br>
   &emsp;├── resources                              # Diretório com os recursos para os testes.<br>
      &emsp;&emsp;├── keywords                      # Diretório com as keywords utilizadas nos testes.<br>
      &emsp;&emsp;├──resoucesJson                   # Diretório com json utilizados nos testes.<br>
   &emsp;├──tests                                   # Diretório com os testes executáveis<br>
   &emsp;├──testsresults                            # Diretório com os resultados dos testes executados<br>

## Ferramentas

- [Python](https://www.python.org/), como linguagem de programação 
- [Robot Framework](https://robotframework.org/), como estrutura genérica de automação de teste;
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary), como biblioteca para automação web 
- [RequestLibrary](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html#library-documentation-top), como biblioteca para automação da API 
- [jsonvalidator](https://pypi.org/project/robotframework-jsonvalidator/), como biblioteca para validar o json 
- [jsonschemalibrary](https://pypi.org/project/robotframework-jsonschemalibrary/), como biblioteca para validar o jsonSchema 
