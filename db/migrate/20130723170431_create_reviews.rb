class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :picture
      t.text :review
      t.string :user_id
      t.string :post_id

      t.timestamps
    end
  end
end
