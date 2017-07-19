class CreateCommutes < ActiveRecord::Migration[5.1]
  def change
    create_table :commutes do |t|
      t.string :starting_location, null: false
      t.string :ending_location, null: false
      t.string :time, null: false
      t.string :mode, null: false
      t.string :description
      t.integer :rating, null: false

      t.timestamps
    end
  end
end
