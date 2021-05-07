class Room < ApplicationRecord
  has_many :sueyoshis
  has_many :tamuras
  has_many :hamadas
  has_many :yamaguchis

  with_options presence: true do
    validates :number, format: {with: /\d{4,4}/}
    validates :date
  end
end
