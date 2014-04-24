class SessionsController < ApplicationController

  def new
  end

  def create
    email = params[:email]
    password = params[:password]
    current_user = User.where(:email => email).first

    if email.strip.empty?
      redirect_to login_path, notice: "Email cannot be blank"
    elsif current_user.password == password
      session[:user_id] = current_user.id
      redirect_to root_path
    elsif
      session[:user_id] = nil
      redirect_to login_path, notice: "Email or Password was incorrect"
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path, notice: "You have succesfully logged out"
  end
end