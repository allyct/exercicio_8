            #language: pt
Funcionalidade: Login

    Contexto:
    Dado que o usuário está na página de login

    Cenário: Inserir dados válidos para login
    Quando digitar o usuário "joao@ebac.com.br"
    E a senha "Senha@123"
    Então o sistema deve direcioná-lo para a página de checkout e exibir a mensagem: "Olá João!"

    Cenário: Usuário inexistente
    Quando digitar o usuário "juhfsl@ebac.com.br"
    E a senha "Senha@123"
    Então deve exibir uma mensagem de alerta: "Usuário inexistente"

    Cenário: Usuário com senha inválida
    Quando digitar o usuário "joao@ebac.com.br"
    E a senha "@@senha102"
    Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

  Esquema do Cenário: Autenticar múltiplos usuários
    Quando o usuário inserir <usuario> 
    E a <senha>
    Então o sistema deve exibir a <mensagem> de sucesso: 

    Exemplos:
      |   usuario         |   senha     |          Mensagem           |
      | joao@ebac.com.br  | Senha@123   |         "Olá João!"         |
      | maria@ebac.com.br | Senha@123   |         "Olá Maria!"        | 
      | jose@ebac.com.br  | @@senha102  |"Usuário ou senha inválidos" |
      
