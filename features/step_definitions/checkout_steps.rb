Dado("que fiz login com email {string} e senha {string}") do |email, password|
  steps %{
    Dado que esteja na página home
    Quando faço login com email "#{email}" e senha "#{password}"
    Então devo ser logado com sucesso
  }
end

Quando("realizo uma busca pelo produto {string}") do |product|
  @home_page = HomePage.new
  @home_page.header.search product
end

Quando("adiciono o produto à sacola") do
  @search_page = SearchPage.new
  @search_page.add_product_to_bag 0
end

Quando("seleciono o endereço e a forma de entrega") do
  @checkout_page = CheckoutPage.new
  @checkout_page.advance_steps
end

Quando("finalizo a compra com pagamento por cheque") do
  @checkout_page.finalize_with_check
end

Então("deve finalizar o pedido com sucesso") do
  @checkout_result_page = CheckoutResultPage.new
  @checkout_result_page.wait_until_alert_success_visible
  expect(@checkout_result_page).to have_alert_success
  expect(@checkout_result_page.alert_success.text.downcase).to include 'your order on my store is complete'
end
