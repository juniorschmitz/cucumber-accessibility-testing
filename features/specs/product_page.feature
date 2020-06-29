# language: pt-br

@full_regression
@product_page
Funcionalidade: Funcionalidades da Página de Produto
  Como um administrador do Fake ecommerce
  Eu gostaria que a página do produto funcionasse corretamente
  Para que os usuários possam selecionar e alterar os atributos desejados para comprar
  
Cenário: Seleção de Atributos
  Dado que esteja na página de um produto
  Quando troco um atributo de cor
  Então a imagem apresentada deve ser alterada
  