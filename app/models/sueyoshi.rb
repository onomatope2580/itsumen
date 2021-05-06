class Sueyoshi < ApplicationRecord
  belongs_to :room

  validates :s_point, :s_rank, :turn, presence: true
end
