#   Desafio Parana Banco 

## Configuração 
 - Instale o Python e pip v3.9 
 - Configure o Python as variáveis de ambiente
 - python --version
 - pip -- version

 - Site de apoio: https://medium.com/@rafasousa/fazer-seu-primeiro-script-de-teste-automatizado-com-robot-framework-8f6f254cc738

 No prompt de comando (cmd) na pasta do execute:
   - pipenv shell          #  Criar um ambiente virtual 
   - pipenv install        #  Baixar as dependências do projeto

 Baixar o webdriver do navegador fixefox 
   - Verifique a versão do seu navegador 
   - Baixar o driver compativel com o seu navegador  https://github.com/mozilla/geckodriver/releases

  Site de apoio: https://pedrohjmartins.medium.com/como-configurar-geckodriver-no-windows-d32d1c5d5f8d


 Baixar o webdriver do navegador Google Chrome 
   - Verifique a versão do seu navegador 
   - Baixar o driver compativel com o seu navegador  https://chromedriver.chromium.org/

  Site de apoio: https://www.selenium.dev/documentation/webdriver/getting_started/install_drivers/

  Obs:O Webdriver instalado deve ser do navegador que deseja rodar os seus testes, cada navegador possui seu webdriver de acordo com a sua versão 

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

## Principais Bibliotecas
robotframework==5.0.1
robotframework-jsonschemalibrary==1.0
robotframework-jsonvalidator==2.0.0
robotframework-requests==0.9.3
robotframework-seleniumlibrary==6.0.0

## Execução de testes 

`pipenv run robot -d testsresults  <dir> <path>/<to>/<file>.robot`

- Executar todos os testes
`pipenv run robot -d testsresults  tests/`

- -d | para guardar o resultado dentro da pasta testsresults
- -i | para executar os testes que tem a tag        ex: `pipenv run robot -d testsresults -i <tag> <dir> <path>/<to>/<file>.robot`
- -e | para não executar os testes que tem a tag    ex: `pipenv run robot -d testsresults -e <tag> <dir> <path>/<to>/<file>.robot`
- -t | para executar somente um teste da suíte      ex: `pipenv run robot -d testsresults -t <"name_testcase"> <dir> <path>/<to>/<file>.robot`
- -V | para "setar" uma variável no momento da excução do teste  
 ...   ex: `pipenv run robot -V Browser:Firefox -d testsresults -t <"name_testcase"> <dir> <path>/<to>/<file>.robot`
