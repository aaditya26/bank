class BankAccount < ApplicationRecord
  belongs_to :client
  validates :client_number, presence: true, uniqueness: true
  validates :account_number, presence: ture, uniqueness: true
  validates :balance, presence: true, numerically: true

  before_validation :load_default

  def load_default
    if self.new_record?
      self.balance = 0.00
    end
  end
  def to_s
    account_number

  end

end
