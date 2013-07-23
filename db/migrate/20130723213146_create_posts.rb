class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :picture
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
