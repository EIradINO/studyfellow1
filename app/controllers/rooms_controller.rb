class RoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @rooms = Room.all.order(:id)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params[:room])
    if @room.save
      # Handle a successful save.
    else
      render 'new'
    end
  end
end
