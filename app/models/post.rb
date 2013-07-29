class Post < ActiveRecord::Base
  attr_accessible :description, :picture, :title
  mount_uploader :picture, PicturesUploader

  has_many :reviews
end
