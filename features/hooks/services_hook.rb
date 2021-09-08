Before '@create_user' do
    
    @headers = {
        "Content-Type": "application/json-patch+json",
        "accept": "application/json"
    }
    
    @body = {
        "email": "teste@enjoei.com.br",
        "password": "1234",
        "name": "Teste QA",
        "userType": "Administrator"
    }.to_json

    @create_user = Users.new(@headers, @body)
end

Before ('@create_product') do
    @headers = {
        "Content-Type": "application/json-patch+json",
        "accept": "application/json"
    }
    
    @name = ('A'..'z').to_a.shuffle.first(8).join

    @body = {
        "name": @name,
        "quantity": "12",
        "price": "10",
        "description": "Teste QA enjoei"
    }.to_json

    @create_product = Products.new(@headers, @body)
end

After ('@create_product') do
    
    @name

    @headers = {}

    @body = {}

    @create_product = Products.new(@headers, @body)
end