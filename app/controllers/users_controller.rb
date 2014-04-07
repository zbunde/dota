class UsersController < ApplicationController
  helper_method :users, :user
  respond_to :html

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      redirect_to root_path, notice: "User Created"
  end


private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password)
  end

  def users
    @_users ||= User.all
  end

  def user
    @_user ||= User.find(params[:id])
  end



 end
