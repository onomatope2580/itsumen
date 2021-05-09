class RecordsController < ApplicationController
  require 'date'

  def index
    @room = Room.find(params[:room_id])
    @sueyoshis = @room.sueyoshis.all
    @tamuras = @room.tamuras.all
    @hamadas = @room.hamadas.all
    @yamaguchis = @room.yamaguchis.all
  end

  def new
    @room = Room.find(params[:room_id])
  end

  def create
  end

end
