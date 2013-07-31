# add a ruby file to read the configuration file and extend Koala when Rails is initialized in the config/initializers directory:
# require 'koala'

# module Facebook
#   CONFIG = YAML.load_file(Rails.root.join("config/facebook.yml"))[Rails.env]
#   APP_ID = CONFIG['186525764858317']
#   SECRET = CONFIG['fda32e7dc767dfb3a814c7e604411dba']
# end

# @graph = Koala::Facebook::API.new#(CAACEdEose0cBAADTGp91u8vmkXPm4U3rLTa721nqJDJ5jtEn2BUxglNzT7WEUT6VhVKtZAxArj4RboIpwlvfc8RTmKJWHoiccZAlQvdhqMzvs8USiKhzY29saaXV2inmbLycNfd7D9urKxHrK2ZC6HsmMQl0ZA4ZD)


# # Monkey-patch in Facebook config so Koala knows to 
# # automatically use Facebook settings from here if none are given

# # config/initializers/koala.rb
# # Simple approach
# Koala::Facebook::OAuth.class_eval do
#   def initialize_with_default_settings(*args)
#     raise "application id and/or secret are not specified in the envrionment" unless ENV['FB_APP_ID'] && ENV['FB_SECRET_KEY']
#     initialize_without_default_settings('186525764858317', 'fda32e7dc767dfb3a814c7e604411dba', args.first)
#   end 

#   alias_method_chain :initialize, :default_settings

# end

