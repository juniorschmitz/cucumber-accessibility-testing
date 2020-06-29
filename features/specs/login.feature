# language: pt-br

@full_regression
@login
Funcionalidade: Login no Fake Ecommerce
  Gostaria de poder logar na aplicação
  Sendo um usuário comum
  Para que eu possa navegar e comprar

Cenário: Login com Sucesso
  Dado que acessei a página de login
  E faço login com email "potato@teste.com" e senha "abc123"
  Então devo ser logado com sucesso

Cenário: Login Inválido
  Dado que acessei a página de login
  E faço login com email "potato@teste.com" e senha "abc1234"
  Então não devo ser logado
