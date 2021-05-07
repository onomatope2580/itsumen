class Hamada < ApplicationRecord
  belongs_to :room

  validates :h_point, :h_rank, :turn, presence: true
end
