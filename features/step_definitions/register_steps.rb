Quando("seleciono a opção de cadastro") do
  @email = Faker::Internet.email
  @login_page.go_to_registration @email
end

Quando("cadastro com dados válidos") do
  @registration_page = RegistrationPage.new
  @registration_page.register_random_user @email
end
