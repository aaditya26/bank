class Show < ApplicationRecord
  validates :time, presence: true
  validates :seats, presence: true, numericality: { only_integer: true }
  has_many :bookings
  belongs_to :audi
  
  after_validation
  private
  def seat
    puts "reversed seats"

  end

end
