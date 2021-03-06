class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    private

    def user_params
        require.params(:user).permit(:username, :email)
    end

end
