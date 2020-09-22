class UsersController < ApplicationController
    before_action :redirect_if_not_logged_in, only: [:show]
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Welcome #{@user.name} to Good Deeds API!"
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
    end
  
    def show
      @user = User.find_by_id(params[:id])
    end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end

