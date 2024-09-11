#language: pt

Funcionalidade: Configuração de produto

  Cenário: Seleção de cor, tamanho e quantidade obrigatórios
    Dado que o usuário está na página de configuração do produto
    Quando o usuário não seleciona cor, tamanho ou quantidade
    E tenta adicionar o produto ao carrinho
    Então o sistema deve exibir uma mensagem de erro "Selecione cor, tamanho e quantidade"

  Cenário: Limitação de 10 produtos por venda
    Dado que o usuário está na página de configuração do produto
    Quando o usuário seleciona mais de 10 produtos
    E tenta adicionar ao carrinho
    Então o sistema deve exibir uma mensagem de erro "Máximo de 10 produtos por venda"

  Cenário: Limpar configurações do produto
    Dado que o usuário está na página de configuração do produto
    Quando o usuário clica no botão "Limpar"
    Então as seleções devem ser resetadas ao estado original

