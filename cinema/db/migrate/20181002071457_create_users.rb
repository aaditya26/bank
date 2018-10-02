class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :seats
      t.integer :number
      t.timestamps
    end
  end
end
