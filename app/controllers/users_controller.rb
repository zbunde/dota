class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]


    if @user.save
      session[:logged_in_user_id] = @user.id
      redirect_to heroes_path, notice: "User Created"
    else
      redirect_to root_path, notice: "User cannot be created"
    end

  def login
      named_user = User.where(email: params[:email]).first
      if named_user && named_user.authenticate(params[:password])
        session[:logged_in_user_id] = named_user.id
      else
        flash[:error] = "Wrong email or password"
        redirect_to root_path
      end

   end


  def logout
      session.clear
      redirect_to root_path
  end


  def index
    @user = User.order("id")
    redirect_to users_path
  end

  private

  def user_params
   params.require(:username).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end


  def authenticate
    redirect_to root_path :notice, "Log the fuck in"
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
 end
end