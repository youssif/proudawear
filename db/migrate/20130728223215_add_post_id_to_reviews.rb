class AddPostIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :post_id, :integer
  end
end
