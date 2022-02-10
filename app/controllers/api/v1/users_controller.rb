class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render(json: @users, status: :ok)
        #render(json: { message: "Si jala la ruta" }, status: :ok)
    end

    def show
        #debugger 
        @user = User.find(params[:id])
        render(json: @user, status: :ok)
    end

    def destroy
        return "lqs"
    end

    def update 
        return "lqs"
    end
end