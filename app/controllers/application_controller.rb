class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action do
    @current_user = User.find_by(id: session[:user_id])
    puts ":  you are in the application_controller, "
    puts ":  method is before_action do, assigning current_user."
    puts ":  @current_user is :  #{@current_user.inspect}"
  end

  def require_login
    redirect_to login_path unless @current_user.present?
  end
end
