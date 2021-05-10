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
    @record = Record.new
  end

  def create
    @room = Room.find(params[:room_id])
    @record = Record.new(record_params)
    if @record.valid?
      @record.save
      redirect_to room_records_path(room_id: @room.id)
    else
      redirect_to new_room_record_path(room_id: @room.id)
    end
  end

  private

  def record_params
    params.require(:record).permit(:s_point, :s_rank, :t_point, :t_rank, :h_point, :h_rank, :y_point, :y_rank,).merge(turn: params[:turn], room_id: params[:room_id])
  end

end
