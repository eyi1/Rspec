require 'Auth'

class Api::V1::PostsController < ApplicationController
    
    def index
        #binding.pry
        @posts = Post.all
        #render json: @posts
        token = request.env["HTTP_AUTHORIZATION"]
        if token && Auth.decode_token(token)
            render json: @posts
        else
            render json: { error: { message: "you must have a valid token" } }, status: 500
        end
    end
end
