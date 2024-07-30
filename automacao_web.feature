Funcionalidade: Cadastro com dados aleatórios

  Cenário: Cadastro com dados aleatórios
    Dado que o usuário está na página de login
    Quando o usuário preenche o campo "Nome" com um nome aleatório
    E o usuário preenche o campo "Endereço de Email" com um email aleatório
    E o usuário clica no botão "Cadastrar"
    Então o usuário deve ver o campo "Data de Nascimento"
    Quando o usuário preenche o campo "Data de Nascimento" com uma data aleatória
    E o usuário seleciona a caixa de seleção "Inscreva-se para nosso boletim informativo!"
    E o usuário seleciona a caixa de seleção "Receba ofertas especiais de nossos parceiros!"
    Então o usuário deve ver a mensagem de sucesso
