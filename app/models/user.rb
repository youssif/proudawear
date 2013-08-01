class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :description, :name, :uid, :image, :nickname
  validates_presence_of :name
  has_many :reviews
  has_many :posts
  has_many :votes

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

  #Below tries to find an existing user by uid or create one with a random password otherwise.
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)

    unless @user
      @user = User.create(name:auth.extra.raw_info.name,
                           provider:auth.provider,
                           uid:auth.uid,
                           nickname:auth.info.nickname,
                           image:auth.info.image,
                           email:auth.info.email,
                           # image: auth.info.secure_image_url,
                           password:Devise.friendly_token[0,20]
                           )
    else 
      @user = User.where(:provider => auth.provider, :uid => auth.uid).first
    end

    #add image
    # if auth.info.image.present?
    #   @user.update_attribute(:image, auth.info.image)
    # end
    
    @user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["user_hash"]
        user.email = data["email"]
      end
    end
  end
  


end
