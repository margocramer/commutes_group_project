class DropRatingFromCommutes < ActiveRecord::Migration[5.1]
  def up
    remove_column :commutes, :rating
  end
  def down
    add_column :commutes, :rating, :integer
  end
end
