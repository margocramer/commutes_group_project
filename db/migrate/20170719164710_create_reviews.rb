class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, null: false
      t.belongs_to :commute, null: false

      t.string :comment, null: false
      t.integer :tally_count, null: false

      t.timestamps
    end
  end
end
