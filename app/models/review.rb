class Review < ActiveRecord::Base
  attr_accessible :name, :picture, :review, :post_id

  belongs_to :post
  belongs_to :user
end
