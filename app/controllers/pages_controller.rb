class PagesController < ApplicationController
  def marketing
    redirect_to teams_path if @current_user.present?
  end
end
