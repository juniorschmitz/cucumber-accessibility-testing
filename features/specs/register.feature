# language: pt-br

@full_regression
@register
Funcionalidade: Cadastro no Fake Ecommerce
  Sendo um visitante do site
  Gostaria de poder me cadastrar
  Para conseguir navegar, alterar dados e finalizar compras

Cenário: Cadastro de usuário com sucesso
  Dado que acessei a página de login
  Quando seleciono a opção de cadastro
  E cadastro com dados válidos
  Então devo logar com sucesso
