class User < ActiveRecord::Base
  attr_accessible :description, :name, :picture
end
