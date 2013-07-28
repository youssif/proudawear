# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, '186525764858317', 'fda32e7dc767dfb3a814c7e604411dba', :display => 'popup'
# end
 
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '186525764858317', 'fda32e7dc767dfb3a814c7e604411dba', :display => 'popup'
end
 
