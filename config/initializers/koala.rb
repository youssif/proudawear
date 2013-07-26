# add a ruby file to read the configuration file and extend Koala when Rails is initialized in the config/initializers directory:

module Facebook
  CONFIG = YAML.load_file(Rails.root.join("config/facebook.yml"))[Rails.env]
  APP_ID = CONFIG['app_id']
  SECRET = CONFIG['secret_key']
end

# Monkey-patch in Facebook config so Koala knows to 
# automatically use Facebook settings from here if none are given

# config/initializers/koala.rb
# Simple approach
Koala::Facebook::OAuth.class_eval do
  def initialize_with_default_settings(*args)
    raise "application id and/or secret are not specified in the envrionment" unless ENV['FB_APP_ID'] && ENV['FB_SECRET_KEY']
    initialize_without_default_settings(ENV['FB_APP_ID'].to_s, ENV['FB_SECRET_KEY'].to_s, args.first)
  end 

  alias_method_chain :initialize, :default_settings
end