# language: pt-br

@full_regression
@checkout
Funcionalidade: Fluxos de Checkout no Ecommerce Fake
  Como um administrador do fake Ecommerce
  Eu gostaria que os usuários conseguissem finalizar compras
  Para que os usuários possam comprar roupas

Cenário: Comprar um produto com método de pagamento cheque
  Dado que fiz login com email "potato@teste.com" e senha "abc123"
  Quando realizo uma busca  pelo produto "shirt"
  E adiciono o produto à sacola
  E seleciono o endereço e forma de entrega
  E finalizo a compra com pagameno por cheque
  Então deve finalizar o pedido com sucesso
