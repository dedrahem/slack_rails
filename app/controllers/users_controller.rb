class UsersController < ApplicationController
  def new
    puts ":             Users Controller def new"
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end
end
