class SessionsController < ApplicationController
    require 'securerandom'
  
    def destroy
      session.clear
      flash[:success] = "You have logged out"
      redirect_to '/'
    end
  
    def new
      @user = User.new
      render :login
    end
  
    def create
      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password]) && @user.authenticate(params[:user][:password_confirmation])
        session[:user_id] = @user.id
        flash[:success] = "Welcome back #{@user.name}!"
        redirect_to user_path(@user)
      else
        flash[:error] = "Sorry, there was an error with your account!"
        redirect_to '/login'
      end
    end
  
