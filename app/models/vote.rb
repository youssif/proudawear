class Vote < ActiveRecord::Base
  attr_accessible :post_id, :rating, :user_id
  belongs_to :user
  belongs_to :post

  validates :user_id, :uniqueness => true

end
