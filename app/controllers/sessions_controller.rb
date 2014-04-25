class SessionsController < ApplicationController

  def new

  end

  def create
    email = params[:email]
    password = params[:password]
    current_user = User.where(:email => email).first

    if email.strip.empty? || current_user == nil
      redirect_to login_path, notice: "Email or password were incorrect"
    elsif password.strip.empty?
      @notice = "Password cannot be empty"
      render :new
    elsif current_user.password == password
      session[:user_id] = current_user.id
      redirect_to '/'
    else
      @notice = "Email or Password is incorrect"
      render :new
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path, notice: "You have succesfully logged out"
  end
end