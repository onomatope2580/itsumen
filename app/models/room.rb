class Room < ApplicationRecord
  has_many :sueyoshis
  has_many :tamuras
  has_many :hamadas
  has_many :yamaguchis

  validates :number, :date
end
