class SessionsController < ApplicationController

  def login

  end

  def create
    if params[:logion][:email_address].present &&
      params[:login][:password].present?

      @user = User.find_by_email_address (params[:login][:email_address])

      if @user.nil?
        redirect_to new_user_path, notice: "Account does not exist"
      end
    else
      if @user.authenticate(params[:login][:email_address])
        session[:user_id] = @user.id #lets user remember they are logged in
        redirect_to heroes_path, notice: "User Logged in Succesfully"

      else
        redirect_to login_path, notice: "Invalid username"
      end

    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "Thank you for logging out"
  end

end


