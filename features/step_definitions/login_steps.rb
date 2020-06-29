Dado("que acessei a página de login") do
  @login_page = LoginPage.new
  @login_page.load
end

Dado("faço login com email {string} e senha {string}") do |email, password|
  @login_page.login_with(email, password)
end

Então("devo ser logado com sucesso") do
  expect(@login_page.header).to have_signed_in_name
end

Então("não devo ser logado") do
  expect(@login_page).to have_alert_danger
  expect(@login_page.alert_danger.text).to include 'AuEntãotication failed'
end
