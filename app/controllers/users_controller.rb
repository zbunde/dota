class UsersController < ApplicationController
  before_filter do
    @logged_in_user = User.where(id: session[:logged_in_user_id]).first
  end

  def index
    @users = User.order("id")
    render :index and return
  end

  def new
    @user = User.new
    render :new and return
  end

  def create
    @user                          = User.new
    @user.username								 = params[:username]
    @user.email_address            = params[:email_address]
    @user.password                 = params[:password]
    @user.first_name							 = params[:first_name]
    @user.last_name		             = params[:last_name]
    if @user.save == true
      session[:logged_in_user_id] = @user.id
      flash[:success] = "Your account has been created"

      session[:logged_in_user_id] = @user.id

      redirect_to heroes_path and return
    else
      render :new and return
    end
  end

  def login
    named_user = User.where(email_address: params[:email_address]).first
    if named_user && named_user.authenticate(params[:password])
      session[:logged_in_user_id] = named_user.id
    else
      flash[:error] = "Wrong email or password"
    end
    redirect_to users_path and return
  end

  def logout
    session.clear
    redirect_to users_path and return
  end

  def forgot_password
    render :forgot_password and return
  end

  def forgot_password_post
    user = User.find_by(email_address: params["email_address"])
    if user != nil
      Pony.mail(
        to:      user.email_address,
        subject: "Password reset request",
        body:    "Please click the following link to reset your password:
#{reset_password_url(user.id, user.email_verification_token)}"
      )
      flash[:success] = "Password reset sent."
      redirect_to users_path
    else
      flash[:error] = "Couldn't find user record for that email."
      redirect_to users_path
    end
  end

  def reset_password_post
    @user = @logged_in_user
    if params[:password] == ""
      flash.now[:error] = "Password cannot be blank."
      render :reset_password and return
    else
      @user.password                 = params[:password]
      if @user.save == true
        flash[:success] = "Password has been set."
        redirect_to users_path and return
      else
        render :reset_password and return
      end
    end
  end
end
