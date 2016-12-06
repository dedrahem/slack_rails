class Api::MessagesController < ApplicationController
  before_action do
    request.format = :json
  end

  def index
    @channel = Channel.find(params[:id])
    @messages = @channel.messages
    @user = @channel.users
    puts " "
    puts "YOU ARE HERE: controllers/api/messages_controller.rb == == =="
    puts " execution is in the index definition                == == =="
    puts "The current USER is given by @user = @channel.users  == == =="
    puts "  by using @user.inspect the user is - - -   #{@user.inspect}"
    puts ""
  end

  def create
    @channel = Channel.find(params[:id])
    @message = Message.new(allowed_params)
    @message.channel = @channel
    @message.user = @current_user
    @message.save
  end

  private

  def allowed_params
    params.require(:message).permit(:body)
  end
end
