class Record
  include ActiveModel::Model
  attr_accessor :s_point, :s_rank, :t_point, :t_rank, :h_point, :h_rank, :y_point, :y_rank, :turn, :room_id

  with_options presence: true do
    with_options format: {with: /\d/} do
      validates :s_point
      validates :t_point
      validates :h_point
      validates :y_point
    end
    validates :s_rank
    validates :t_rank
    validates :h_rank
    validates :y_rank
    validates :turn
    validates :room_id
  end

  def save
    Sueyoshi.create(s_point: s_point, s_rank: s_rank, turn: turn, room_id: room_id)
    Tamura.create(t_point: t_point, t_rank: t_rank, turn: turn, room_id: room_id)
    Hamada.create(h_point: h_point, h_rank: h_rank, turn: turn, room_id: room_id)
    Yamaguchi.create(y_point: y_point, y_rank: y_rank, turn: turn, room_id: room_id)
  end
end