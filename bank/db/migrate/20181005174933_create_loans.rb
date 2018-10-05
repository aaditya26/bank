class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.string :loan_type
      t.float :loan_amount
      t.float :loan_rate
      t.float :loan_time
      t.reference :user
      t.reference :bank

      t.timestamps
    end
  end
end
