            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de autenticação do portal EBAC-SHOP

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o usuário "lilianne@ebac.com.br"
            E a senha "lili@3"
            Então deve exibir uma mensagem de Boas Vindas "Seja bem vinda, Lilianne"

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o usuário <email>
            E a <senha>
            Então deve exibir uma <mensagem> de alerta

            Exemplos:
            | email                    | senha     | mensagem                    |
            | "jose.aragao@ebac.com"   | "152jo"   | "Usuário ou senha inválida" |
            | "henrique@ebac.br"       | "1605ric" | "Usuário ou senha inválida" |
            | "danilojoao@ebac.com.br" | "55do_k"  | "Usuário ou senha inválida" |