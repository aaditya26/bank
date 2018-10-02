class Booking < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  validates :seats, presence: true, numericality: { only_integer: true }, length: {minimum: 1}
  has_many :tickets
  belongs_to :theatre
  belongs_to :show

  after_validation do
    update
    def Booking
      if users>seats
        puts "house full"
      else
        puts "open"
      end
    end
  end
end
