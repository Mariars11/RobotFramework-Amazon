*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}    edge
${URL}    https://www.amazon.com.br/
${ID_BARRAPESQUISA}    twotabsearchtextbox
${ID_BUTTONPESQUISA}    nav-search-submit-button
*** Keywords ***
Acessar a página
    Open Browser    url=${URL}    browser=${BROWSER}
Pesquisar Produto
    Input Text    locator=id:${ID_BARRAPESQUISA}    text=kindle
    Click Element    locator=id:${ID_BUTTONPESQUISA}
Validar Resultado
    Wait Until Page Contains    text=Resultados