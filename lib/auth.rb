require 'JWT'
require 'pry'

class Auth 

    #encode 
    def self.create_token(user_object)
        #binding.pry
        #payload = { user: user_object }
        payload = { user: JSON.parse(user_object.to_json) }
        token = JWT.encode(payload, 'myapp', 'HS256')
        decode_token(token)
    end

    def self.decode_token(token)
        #binding.pry
        decoded = JWT.decode(token, 'myapp', true, { algorithm: 'HS256' })
        #binding.pry
    end
end