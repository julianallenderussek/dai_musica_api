class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render(json: @users, status: :ok)
        #render(json: { message: "Si jala la ruta" }, status: :ok)
    end
    

    def create 
        #@user = User.create(first_name: params[:first_name] ,last_name: paramas[:last_name], email: params[:email], password: params[:password])
        @user = User.create(user_params)

        if @user
            render(json: @user, status: :created)

        else 
            render(json: { message: "There was an error creating user " } , status: :bad_request)
        end
    end

    def show
        #debugger 
        @user = User.find(params[:id])
        render(json: @user, status: :ok)
    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy!
            render(json: { message: "The user was deleted"}, status: :ok)
          else
            render(json: { errors: @user.errors.full_messages }, status: :bad_request)
          end
    end

    def update
        @user = User.find(params[:id])
        @user.update!(user_params)
        render(json: @user, status: :updated)
    end

    private 
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
      end
end