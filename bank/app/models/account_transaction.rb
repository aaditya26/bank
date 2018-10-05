class AccountTransaction < ApplicationRecord
  belongs_to :bank_account

  TRANSATION_TYPE = ["withdraw", "deposit"]

  validates :bank_account, presence: true
  validates :amount, presence: true, numericality: true
  validates :transaction_type, presence: true, inclusion: {in: TRANSATION_TYPE}
  validates :transaction_number, presence: true, uniqueness: true

  after_save :withdrawal_amount_and_check_balance
  after_save :withdrawal_amount
  after_save :update_balance_after_deposite
  after_save :left_balance_after_withdrawal

  before_validation :load_default
  def load_default
    if self.new_record?
      self.transaction_number = SecureRandom.uuid
    end
  end

  private
  def withdrawal_amount_and_check_balance
    if self.account.balance < self.amount && sel.operation == 'withdrawal'
      errors.add(:amount, "not permitted amount not balance enough")
    end
  end
  def withdrawal_amount
    if self.amount % '100' == '0' && self.operation == 'withdrawal'
      errors.add(:amount, "not permitted amount not balance enough")
    end
  end
  def update_balance_after_deposite
    if self.operation == 'deposite'
      new_balance = self.account.balance + self.amount
      self.account.update.attributes(balance: new_balance)
    end
  end
  def left_balance_after_withdrawal
    if self.operation == 'withdrawal'
      new_balance = self.account.balance - self.amount
      unless self.account.update_attributes(balance: new_balance)
      raise "requested amount can not be withdraw"
    end
  end
  end
end
