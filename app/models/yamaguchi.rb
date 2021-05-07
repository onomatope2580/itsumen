class Yamaguchi < ApplicationRecord
  belongs_to :room

  validates :y_point, :y_rank, :turn, presence: true
end
