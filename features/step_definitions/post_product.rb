Dado('que eu faça uma request do tipo post para criar um produto') do
    @product = @create_product.createProduct
end

Então('a api deve me retornar o status de sucesso no cadastro do produto') do
    expect(@product.body).to include(/success|true/).twice
    expect(@product.code).to eql 200
    
    @product2 = @create_product.getProduct(@name)
    expect(@product2).to be_truthy

end