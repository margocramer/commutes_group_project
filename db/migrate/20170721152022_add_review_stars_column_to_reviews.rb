class AddReviewStarsColumnToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :review_stars, :integer
  end
end
