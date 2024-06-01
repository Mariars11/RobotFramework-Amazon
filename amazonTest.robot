*** Settings ***
Documentation    Teste do site da amazon
Resource    amazonResource.robot
*** Test Cases ***
Caso de Teste - Pesquisa Produto
    Acessar a página
    Pesquisar Produto 
    Validar Resultado