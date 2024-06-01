*** Settings ***
Documentation    Teste do site da amazon
Resource    amazonResource.robot
*** Test Cases ***
Caso de Teste - Pesquisa Produto
    Acessar a página
    Pesquisar Produto 
    Validar Resultado
    Acessar Descrição Kindle
Caso de Teste - Adicionar ao Carrinho
    Validar Kindle
    Adicionar Carrinho
    Validar Carrinho
# Caso de Teste - Ver pedidos
#     Listagem de pedidos
#     Validar Pedidos
Caso de Teste - Navegar por categoria
    Listagem de Categorias
    Escolher Categoria Alimentos
    