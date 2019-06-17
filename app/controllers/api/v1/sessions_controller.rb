require 'Auth'

class Api::V1::SessionsController < ApplicationController
    def login
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
            #render json: @user
            render json: { token: Auth.create_token( { id: @user.id, name: @user.name, email: @user.email }) }
        else
            render json: { errors: { message: "unable to find user with that email or password" } }, status: 500
        end
    end

end
