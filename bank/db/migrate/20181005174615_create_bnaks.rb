class CreateBnaks < ActiveRecord::Migration[5.2]
  def change
    create_table :bnaks do |t|
      t.string :bank_name
      t.string :bank_address
      t.string :bank_location
      t.integer :contact_no

      t.timestamps
    end
  end
end
