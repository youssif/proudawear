class Post < ActiveRecord::Base
  attr_accessible :description, :picture, :title, :name
  mount_uploader :picture, PicturesUploader
  belongs_to :user
  has_many :reviews
  validates :picture, presence: true
  has_many :votes

  def next_post
    @next_post = Post.find(:first, :conditions => ["id > ?", self.id])
  end

  def previous_post
    @previous_post = Post.find(:last, :conditions => ["id < ?", self.id])
  end


end
