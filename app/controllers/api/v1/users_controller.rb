class Api::V1::UsersController < ApplicationController
    # def index
    #     @users = User.all
    # end
    
    # def new
    #     @user = User.new
    # end

    # def create
    #     @user = User.create(:name)
    # end

    def signup
        #params.inspect
        #render json: {message: "Sign up"}
        @user = User.new(user_params)

        if @user.valid? && @user.save
            #render json: @user
            render json: { token: Auth.create_token(@user) }
        else
            render json: { errors: @user.errors.full_messages}, status: 500
        end
    end

    private

    def user_params
        params.require(:user).permit(
            :name,
            :email,
            :password
        )
    end
end
