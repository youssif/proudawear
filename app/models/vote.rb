class Vote < ActiveRecord::Base
  attr_accessible :post_id, :rating, :user_id
  belongs_to :user
  belongs_to :post

  # validates_uniqueness_of :user_id, :scope => [:post_id, :rating]
  #validates :user_id, :uniqueness => true
#make sure to changes validates, the validates makes it 
#validate against all votes
  
end
