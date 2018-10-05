class Bnak < ApplicationRecord
  has_many :bankAccount
  has_many :accountTransaction
  validates :bank_name, presence: true
  validates :bank_address, presence: true
  validates :bank_location, presence: true
  validates :contact_no, presence: true

end
