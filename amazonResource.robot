*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}    edge
${URL}    https://www.amazon.com.br/
${ID_BARRAPESQUISA}    twotabsearchtextbox
${ID_BUTTONPESQUISA}    nav-search-submit-button
${ELEMENTO_KINDLE}    //img[contains(@alt,'Kindle 11ª Geração')]
${ID_ADDCARRINHO}    add-to-cart-button
${ID_PEDIDOS}    nav-orders
${ID_NAVMENU}    nav-hamburger-menu
${DIV_CATEGORIA}    //*[@id="hmenu-content"]/ul[1]/li[2]/a
*** Keywords ***
Acessar a página
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
Pesquisar Produto
    Input Text    locator=id:${ID_BARRAPESQUISA}    text=kindle
    Click Element    locator=id:${ID_BUTTONPESQUISA}
Validar Resultado
    Wait Until Page Contains    text=Resultados
Acessar Descrição Kindle
    Click Element    locator=${ELEMENTO_KINDLE}
Validar Kindle
    Wait Until Page Contains    text=Em estoque
Adicionar Carrinho
    Click Element    locator=id:${ID_ADDCARRINHO}
Validar Carrinho
    Wait Until Page Contains    text=Adicionado ao carrinho
# Listagem de pedidos
#     Click Element    locator=id:${ID_PEDIDOS}
# Validar Pedidos
#     Wait Until Page Contains    text=Seus pedidos
Listagem de Categorias
    Click Element    locator=id:${ID_NAVMENU}
    Wait Until Page Contains    text=Destaques
Escolher Categoria Alimentos
    #Execute Javascript    window.scrollTo(0,400)
    Click Element    locator=${DIV_CATEGORIA}
    Wait Until Page Contains    text=Mais vendidos