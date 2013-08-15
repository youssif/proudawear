class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :picture
      t.text :review
      t.references :user
      t.references :post

      t.timestamps
    end
  end
end
