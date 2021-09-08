class Products
    include HTTParty
    require_relative "../hooks/services_hook"
    base_uri CONFIG['url_default']

    def initialize (headers, body)
        @bodyOptions = {:headers => headers, :body => body}
        @bodyOptions2 = {:query => @name}
    end

    def createProduct
        self.class.post('/api/v1/products', @bodyOptions)
    end

    def getProduct(name)
        self.class.get("/api/v1/products?#{name}", @bodyOptions2)
    end


end
