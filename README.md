#   Desafio Parana Banco 

## Configuração 


## Arquitetura do Projeto

├── desafio-parana-banco                  
   &emsp;├── resources                              # Diretório com os recursos para os testes.<br>
      &emsp;&emsp;├── keywords                      # Diretório com as keywords utilizadas nos testes.<br>
    &emsp;├──tests                                  # Diretório com os testes executáveis<br>
    &emsp;├──testsresults                           # Diretório com os resultados dos testes executados<br>

## Ferramentas

- [Python](https://www.python.org/), como linguagem de programação 
- [Robot Framework](https://robotframework.org/), como estrutura genérica de automação de teste;
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary), como biblioteca para automação web 
- [GherkinBDD], como descrição de comportamentos.

## Execução de testes 

`pipenv run robot -d testsresults  <dir> <path>/<to>/<file>.robot`

- -d | para guardar o resultado dentro da pasta testsresults
- -i | para executar os testes que tem a tag        ex: `pipenv run robot -d testsresults -i <tag> <dir> <path>/<to>/<file>.robot`
- -e | para não executar os testes que tem a tag    ex: `pipenv run robot -d testsresults -e <tag> <dir> <path>/<to>/<file>.robot`
- -t | para executar somente um teste da suíte      ex: `pipenv run robot -d testsresults -t <"name_testcase"> <dir> <path>/<to>/<file>.robot`
- -V | para "setar" uma variável no momento da excução do teste  
 ...   ex: `pipenv run robot -V Browser:Firefox -d testsresults -t <"name_testcase"> <dir> <path>/<to>/<file>.robot`
