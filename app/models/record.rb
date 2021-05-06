class Record < ApplicationRecord
  belongs_to :user

  validates :points, :rank, :date, :turn, presence: true
end
