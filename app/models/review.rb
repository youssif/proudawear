class Review < ActiveRecord::Base
  attr_accessible :name, :picture, :review, :post_id

  belongs_to :post
  belongs_to :user

end


#Vote Model Notes
# Vote
# user_id
# post_id
# rating :boolean

# Post
# def positive_votes
#   self.votes.where(rating: true)
# end

# def positive_percentage
#   self
  
# end
