class Review < ActiveRecord::Base
  attr_accessible :name, :picture, :review, :post_id

  belongs_to :post
  belongs_to :user

  def initialize
    @rate_good = 0
    @rate_bad = 0
  end

  def rate_good
    @rate_good += 1
  end

  def rate_bad
    @rate_bad -= 1 
  end

  def total_rating
    @rate_good_percent = (@rate_good / (@rate_good + @rate_bad)*100).to_s + "%"
    @rate_bad_percent = @rate_bad / (@rate_good + @rate_bad)*100.to_s + "%"
  end

end
