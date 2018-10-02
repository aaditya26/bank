class Theatre1 < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  validates :address, presence: true, length: {maximum: 50}
  validates :number, presence: true, numericality: { only_integer: true }, length: {maximum: 10}
  has_many :audis
  has_many :bookings

  before_validation
  def theatre
    puts "enter name"
    name=gets;
    puts "enter address"
    address=gets;
    puts "number"
    number=gets;
  end
end
