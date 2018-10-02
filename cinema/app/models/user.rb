class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  validates :number, presence: true, numericality: { only_integer: true }, length: {maximum: 10}
  validates :seats, presence: true, numericality: { only_integer: true }, length: {minimum:1}
  has_many :bookings
  before_create do
    private
    def user_name
      self.anme=name.downcase.titleize
      @number.user=number
      @seats.user=seats
    end
  end
end
