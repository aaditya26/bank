class Audi < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  validates :seats, presence: true, numericality: { only_integer: true }
  has_many :shows
  has_many :tickets
  has_many :movies, through: :shows
  belongs_to :Theatre

  after_validation do
    private
    @seats.audi=seats
    puts "seats booked"

  end
end
