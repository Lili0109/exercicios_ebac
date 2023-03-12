            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a página de produtos do portal EBAC-SHOP

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu abrir o produto escolhido Quando eu seleciono um <cor>
            E selecionar <tamanho>
            E <quantidade> do produto
            Então deve exibir uma mensagem "Produto enviado para o carrinho"

            Exemplos :

            | cor   | tamanho | quantidade|
            | Azul  | P       | 2         |
            | Rosa  | M       | 1         |
            | Verde | G       | 1         |
           
            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar a <quantidade> de produtos
            E incluir no carrinho de compras
            Então deve exibir a <mensagem>

            Exemplos:
            | quantidade | mensagem                                |
            | "4"        | "Produto incluso no carrinho"           |
            | "10"       | "Produto incluso no carrinho"           |
            | "11"       | "Quantidade excedeu o limite de compra" |

            Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando as opões estiverem de cor, tamanho e quantidade estiverem marcadas
            E clicar no botão "limpar"
            Então as opções de cor, tamanho e quantidade deixarão de ficar selecionadas.









