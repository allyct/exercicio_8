#language: pt

Funcionalidade: Checkout

  Cenário: Cadastro com todos os dados obrigatórios
    Dado que o usuário está na página de checkout
    Quando o usuário preenche todos os campos obrigatórios
    E clica no botão de confirmação
    Então o sistema deve finalizar o cadastro com sucesso

  Cenário: E-mail com formato inválido
    Dado que o usuário está na página de checkout
    Quando o usuário preenche o campo e-mail com "email_invalido"
    E clica no botão de confirmação
    Então o sistema deve exibir uma mensagem de erro "Formato de e-mail inválido"

  Cenário: Cadastro com campos vazios
    Dado que o usuário está na página de checkout
    Quando o usuário deixa campos obrigatórios vazios
    E clica no botão de confirmação
    Então o sistema deve exibir uma mensagem de alerta "Preencha todos os campos obrigatórios"