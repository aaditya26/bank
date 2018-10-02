class Ticket < ApplicationRecord
  validates :number, presence: true, numericality: { only_integer: true }
  belongs_to :booking
  belongs_to :audi
  belongs_to :movie
  after_validation do
    private
    def number
      puts "ticket number"
      number=gets;
    end
  end
end
