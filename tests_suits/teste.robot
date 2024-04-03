*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

*** Variables ***
${CEP_XPATH}    //ul/li/a/span[.='Busca CEP ou Endereço']
${ACEITO}    //a[@id='btnCookie']

*** Keywords ***
Abrir site dos correios
    Open Browser    url=https://www.correios.com.br/    browser=Chrome
Clicar em Busca CEP ou Endereço
    Click Element    ${ACEITO}
    Click Element    ${CEP_XPATH}

*** Test Cases ***
TC01 - Acessar site dos correios
    Abrir site dos correios
    Clicar em Busca CEP ou Endereço
    Sleep    5s
    Close Browser
