class Post < ActiveRecord::Base
  attr_accessible :description, :picture, :title
  mount_uploader :picture, PicturesUploader
  belongs_to :user


  has_many :reviews
end
