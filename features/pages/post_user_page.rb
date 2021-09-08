class Users
    include HTTParty
    require_relative "../hooks/services_hook"
    base_uri CONFIG['url_default']

    def initialize (headers, body)
        @bodyOptions = {:headers => headers, :body => body}
    end

    def createUser
        self.class.post("/api/v1/users", @bodyOptions)
    end
end