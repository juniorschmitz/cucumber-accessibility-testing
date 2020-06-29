#language: pt-br

@full_regression
@accessibility
Funcionalidade: Verificação da Acessibilidade na página do Ecommerce Fake
  Como administrador do Fake Ecommerce
  Gostaria que o Website fosse acessivel
  Para que todo mundo possa usufruir e comprar

@accessibility_home
Cenário: Verificação da acessibilidade na página home
  Dado que esteja na página home
  Então the page should be accessible

@accessibility_header
Cenário: Verificação da acessibilidade do header
  Dado que esteja na página home
  Então the page should be accessible within "#header"

@accessibility_footer
Cenário: Verificação da acessibilidade do footer
  Dado que esteja na página home
  Então the page should be accessible within ".footer-container"

@accessibility_footer_excluding_some_elements
Cenário: Verificação da acessibilidade do footer excluindo elementos
  Dado que esteja na página home
  Então the page should be accessible within ".footer-container" but excluding "button[name='submitNewsletter'], #newsletter-input, .facebook, .twitter, .youtube, .google-plus"

