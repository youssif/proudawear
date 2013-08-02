class ChangeVotesColumns < ActiveRecord::Migration
  def up
    change_column :votes, :post_id, :integer
  end

  def down
  end
end
