class User < ActiveRecord::Base
  # validates :auth_token, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  # before_create :generate_authentication_token!

  has_many :identities

  # def self.find_for_oauth(auth, signed_in_resource = nil)
  #   # Get the identity and user if they exist
  #   identity = Identity.find_for_oauth(auth)

  #   # If a signed_in_resource is provided it always overrides the existing user
  #   # to prevent the identity being locked with accidentally created accounts.
  #   # Note that this may leave zombie accounts (with no associated identity) which
  #   # can be cleaned up at a later date.
  #   user = signed_in_resource ? signed_in_resource : identity.user

  #   # Create the user if needed
  #   if user.nil?
  #     # Get the existing user by email if the provider gives us a verified email.
  #     # If no verified email was provided we assign a temporary email and ask the
  #     # user to verify it on the next step via UsersController.finish_signup
  #     email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
  #     email = auth.info.email if email_is_verified
  #     user = User.where(email: email).first if email

  #     # Create the user if it's a new registration
  #     if user.nil?
  #       user = User.new(
  #         email: email ? email : "#{auth.uid}-#{auth.provider}.com",
  #         password: Devise.friendly_token[0,20]
  #       )
  #       user.skip_confirmation!
  #       user.save!
  #     end
  #   end

  #   # Associate the identity with the user if needed
  #   if identity.user != user
  #     identity.user = user
  #     identity.save!
  #   end

  #   user
  # end

  # def generate_authentication_token!
  #   begin
  #     self.auth_token = Devise.friendly_token
  #   end while self.class.exists?(auth_token: auth_token)
  # end

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0,20]
  #   end
  # end

  # def twitter
  #   identities.where(provider: 'twitter').first
  # end

  # def twitter_client
  #   @twitter_client ||= Twitter.client(access_token: twitter.access_token)
  # end

  # def facebook
  #   identities.where(provider: 'facebook').first
  # end

  # def facebook_client
  #   @facebook_client ||= Facebook.client(access_token: facebook.access_token)
  # end

  # def github
  #   identities.where(provider: 'github').first
  # end

  # def github_client
  #   @github_client ||= Github.client(access_token: github.access_token)
  # end
end