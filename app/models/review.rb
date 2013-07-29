class Review < ActiveRecord::Base
  attr_accessible :name, :picture, :review, :post_id

  mount_uploader :picture, PicturesUploader

  belongs_to :post
end
