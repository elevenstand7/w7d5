class UsersController < ApplicationController

    def new 
        @user = User.new
        render :new 
    end 

    def create
        @user = User.find_by(user_params)

        if @user.save 
            redirect_to users_url 
        else
            flash.now[:errors] = @user.errors.full_messages
           render :new
        end 
    end 

    def show 

    end 

    def index 

    end 



    def user_params
        params.require(:user).permit(:username, :password)
    end 
end
