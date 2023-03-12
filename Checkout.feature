            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de checkout do portal EBAC-SHOP

             Cenário : Deve ser cadastrado com todos os dado asters obrigatórios, marcadosom asteristico
            Quando eu acesso uma página para informar os dados para cadastro
            E algum campo de "dado obrigatório"  <NOME> , <SOBRENOME> , <PAIS> , <ENDERECO> , <CIDADE> , <CEP> , <TELEFONE> ficar vazio
            Então deve exibir uma <MENSAGEM> de alerta

            Exemplo:

            | NOME | SOBRENOME | PAIS | ENDERECO | CIDADE | CEP | TELEFONE | MENSAGEM
            | João | | Brasil | Rua 3a | Brasília | 710000-000 | 8965-4785 |Favor preencher campo vazio
            | | | Brasil | Av brasil 345 | Jurerê | 25000-000 | 2547-6589 |Favor preencher campo    vazio
            
            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu digitar o <usuário>
            E o "formato" for inválido
            Então deve exibir uma <mensagem> de erro

            Exemplos:
            | usuário             | mensagam           |
            | "joao@ebc.com.br"   | "Usuário inválido" |
            | "andre.ebac.com.br" | "Usuário inválido" |
            | "lilianne@ebac.com" | "Usuário inválido" |
            | "henrique@ebac.br"  | "Usuário inválido" |


            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu tentar "finalizar a compra"
            E tiver faltando algum dado obrigatório
            Então deve exibir mensagem de alerta: "Favor cadastrar dado obrigatório"
