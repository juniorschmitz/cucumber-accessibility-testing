Dado("que esteja na página home") do
  @home_page = HomePage.new
  @home_page.load
end

Então("devem ser apresentados resultados") do
  @search_page = SearchPage.new
  expect(@search_page).to have_products
end

Então("não devem ser apresentados resultados") do
  @search_page = SearchPage.new
  expect(@search_page).not_to have_products
end
