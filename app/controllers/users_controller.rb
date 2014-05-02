

class UsersController < ApplicationController
  helper_method :users, :user
  respond_to :html



  def index
    if session[:user_id]
      @user_id = User.find(session[:user_id])
    end
      redirect_to '/', notice: "Users only can access this page"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "User Created"
    else
      render :new
    end
  end
  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password_digest)
  end

  def users
    User.all
  end

  def user
    User.find(params[:id])
  end


end
