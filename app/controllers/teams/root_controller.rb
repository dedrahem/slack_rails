class Teams::RootController < ApplicationController
  before_action :require_login

  def index
    puts " "
    puts " "
    puts "you are here : teams/root/index.html.erb via layouts/application"
    puts " "
    puts " "
    @teams = @current_user.teams
  end

  def show
    puts " "
    puts " "
    puts "you are here : teams/root_controller.rb/#show "
    puts "aka : teams/root/show.html.erb within layouts/application "
    puts " "
    @team = Team.find(params[:id])
    @channels = @current_user.channels.by_team(@team)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(allowed_params)
    if @team.save
      @current_user.teams << @team
      redirect_to teams_path
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:team).permit(:name, :description)
  end
end
