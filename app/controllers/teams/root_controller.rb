class Teams::RootController < ApplicationController
  before_action :require_login

  def index
    puts "you are here : controllers/teams/root_controller.rb"
    puts " in the def index method"
    @teams = @current_user.teams
  end

  def show
    puts " - - - - - - - - - - - - - - - - - - - - "
    puts "  you are here : controllers/teams/root_controller.rb"
    puts "  in the def show method"
    puts "  @team = Team.find(params[:id])"
    puts " "
    @team = Team.find(params[:id])
    puts " "
    puts " @team is #{@team.inspect}"
    puts " "
    puts " "
    puts " begin: @channels = @current_user.channels.by_team(@team)"
    puts "  error:  this didn't work and was updated on Sunday 23 Oct. to, "
    puts "       @channels = Channel.by_team(@team)"
    puts " "
    # @channels = @current_user.channels.by_team(@team) #
    @channels = Channel.by_team(@team)
    puts " "
    puts "===   ===   ===   ===   ===   ===   ===   ===   ===   === "
    puts " "
    puts " inspecting @channels produces .... : #{@channels.inspect}"
    puts " "
    puts "===   ===   ===   ===   ===   ===   ===   ===   ===   === "
    puts " inspect @channels 0      #{@channels[0].inspect}"
    puts " inspect @channels 1      #{@channels[1].inspect}"
    puts " inspect @channels 2      #{@channels[2].inspect}"
    puts " inspect @channels 3      #{@channels[3].inspect}"
    puts " inspect @channels 4      #{@channels[4].inspect}"
    puts " inspect @channels 5      #{@channels[5].inspect}"
    puts " inspect @channels 6      #{@channels[6].inspect}"
    puts " inspect @channels 7      #{@channels[7].inspect}"
    puts " inspect @channels 8      #{@channels[8].inspect}"
    puts " inspect @channels 9      #{@channels[9].inspect}"
    puts " inspect @channels 10      #{@channels[10].inspect}"
    puts " inspect @channels 11      #{@channels[11].inspect}"
    puts " inspect @channels 12      #{@channels[12].inspect}"
    puts " "
    #  you need to see channels for a team #
    puts "                WOW                     "
    puts " - - - - - - - - - - - - - - - - - - - - "
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
