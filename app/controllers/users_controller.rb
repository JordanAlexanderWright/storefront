class UsersController < ApplicationController
  def index 
    @user = User.new
  end

  def new 
    @user = User.new
  end

  def create 
    p params 
    p params[:user]
    @user = User.new(user_params)
    p 'HELLO WORLD'
    p params

    if @user.save 
      flash[:notice] = "User Created"
      redirect_to action: "index"
    else
      flash[:notice] = "There's a problem with your data"
    end
  end

  private 
  def user_params 
    params.require(:user).permit(:first_name, :last_name, :user_name, :password, :email)
  end
end
