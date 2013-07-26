class Review < ActiveRecord::Base
  attr_accessible :name, :picture, :review
  mount_uploader :picture, PicturesUploader

  belongs_to :user
end
