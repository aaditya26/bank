class CreateTheatre1s < ActiveRecord::Migration[5.2]
  def change
    create_table :theatre1s do |t|
      t.string :name
      t.string :address
      t.integer :number
      t.timestamps
    end
  end
end
