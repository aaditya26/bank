class Loan < ApplicationRecord
  belongs_to :bankAccoun
  validates :loan_type, presence: true
  validates :loan_amount, presence: true
  validates :loan_rate, presence: true
  validates :loan_time, presence: true

end
