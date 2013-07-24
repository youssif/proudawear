class Review < ActiveRecord::Base
  attr_accessible :name, :picture, :review
  belongs_to :user
end
