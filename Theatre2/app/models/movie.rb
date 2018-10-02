class Movie < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :category, presence: true, length: {maximum: 10}
  has_many :tickets
  belongs_to :audi

  before_validation do
    def title
      puts "title name"
      puts "category name"
    end
    after_save do
      puts "title name"
      puts "category name"
    end
  end
end
