Dado("que esteja na página de um produto") do
  @product_page = ProductPage.new
  @product_page.load
end

Quando("troco um atributo de cor") do
  @img_bfr = @product_page.big_image[:src]
  @product_page.colors.last.click
  sleep 2
end

Então("a imagem apresentada deve ser alterada") do
  @img_aftr = @product_page.big_image[:src]
  expect(@img_bfr).not_to eql @img_aftr
end
