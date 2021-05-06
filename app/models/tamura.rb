class Tamura < ApplicationRecord
  belongs_to :room

  validates :t_point, :t_rank, :turn, presence: true
end
