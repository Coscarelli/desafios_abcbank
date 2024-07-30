*** Config ***
Library  SeleniumLibrary
Library  FakerLibrary
Suite Setup  Abrir Navegador
Suite Teardown  Fechar Navegador

*** Var ***
${LOGIN_URL}  https://automationexercise.com/login

*** Dados ***
Abrir Navegador
    Open Browser  ${LOGIN_URL}  Chrome

Fechar Navegador
    Close Browser

Preencher Dados Cadastro
    ${NOME_ALEATORIO}  Fake  name
    ${EMAIL_ALEATORIO}  Fake  email
    ${DATA_ALEATORIA}  Fake  date_of_birth
    Input Text  name  ${NOME_ALEATORIO}
    Input Text  email  ${EMAIL_ALEATORIO}
    Click Button  xpath=//button[text()="Signup"]
    Wait Until Page Contains Element  xpath=//input[@name="date_of_birth"]
    Input Text  xpath=//input[@name="date_of_birth"]  ${DATA_ALEATORIA}
    Click Element  xpath=//input[@name="newsletter"]
    Click Element  xpath=//input[@name="optin"]
    Wait Until Page Contains  Get the most recent updates from our site and be updated yourself...

*** Test ***
Cadastro com dados aleatórios
    Preencher Dados Cadastro
