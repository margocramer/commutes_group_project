class RemoveTallyCountFromReviews < ActiveRecord::Migration[5.1]
  def up
    remove_column :reviews, :tally_count
  end
  def down
    add_column :reviews, :tally_count, :integer
  end
end
