class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.reference :client
      t.decimal :balance
      t.string :account_number
      t.string :opening_date

      t.timestamps
    end
  end
end
