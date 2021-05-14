class RecordsController < ApplicationController

  def index
    @room = Room.find(params[:room_id])
    @sueyoshis = @room.sueyoshis.all
    
    @s_today_total = @sueyoshis.all.sum(:s_point)
    @t_today_total = @room.tamuras.all.sum(:t_point)
    @h_today_total = @room.hamadas.all.sum(:h_point)
    @y_today_total = @room.yamaguchis.all.sum(:y_point)
  end

  def new
    @room = Room.find(params[:room_id])
    @sueyoshis = @room.sueyoshis.all
    @sueyoshi = @room.sueyoshis.order(updated_at: :desc).limit(1)
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
