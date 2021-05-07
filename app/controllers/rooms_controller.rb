class RoomsController < ApplicationController
  require 'date'

  def index
  end

  def new
    @room = Room.new
  end

  def create
  end
  
end
