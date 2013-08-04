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

  def upvote_counter
    self.votes.where(rating: true).count
  end

  def downvote_counter
    self.votes.where(rating: false).count
  end

  def total_votes
    self.votes.count
  end

  def upvote_percent
    upvotes = self.upvote_counter
    votes = self.total_votes
    ((upvotes.to_f/votes.to_f)*100).to_i
  end

  def downvote_percent
    ((self.upvote_counter.to_f/self.total_votes.to_f)*100).to_i
  end

  def downvote_check(user)
    #search to see if current user has already made a downvote
    if self.votes.where(rating: false, user_id: user)
      destroy_votes = self.votes.where(user_id: user)
      destroy_votes.each do |vote|
        vote.destroy
      end
    end
  end

  def upvote_check(user)
    #search to see if current user has already made an upvote
    if self.votes.where(rating: true, user_id: user)
      destroy_votes = self.votes.where(user_id: user)
      destroy_votes.each do |vote|
        vote.destroy
      end
    end
  end

  # def voted?
  #   if current_user.id = self.votes.id

  # end



end
