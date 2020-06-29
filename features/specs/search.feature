# language: pt-br

@full_regression
@search
Funcionalidade: Busca por Produtos
  Gostaria de poder buscar por produtos
  Sendo um usuário do site
  Para poder finalizar compras após

Cenário: Busca por um produto válido
  Dado que esteja na página home
  Quando realizo uma busca pelo produto "shirt"
  Então devem ser apresentados resultados

Cenário: Search for inexistent product
  Dado que esteja na página home
  Quando realizo uma busca pelo produto "camiseta"
  Então não devem ser apresentados resultados
