
class UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users, status:200
    end 

    def create
        @user = User.new(user_params) 
        if @user.save 
        render json: @user 
        else  
            render json: {error: 'Error creating an account '}
        end 
    end 

    def show
        @user = user.find(params[:id])
        render json: @user
    end 

   
    def update
     
    end 

    def destroy
   
    end 


   
    private 

    def user_params
        params.require(:user).permit(:username, :email, :password_digest)
    end 



end
