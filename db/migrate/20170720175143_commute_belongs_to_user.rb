class CommuteBelongsToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :commutes, :user, foreign_key: true
  end
end
