require 'rails_helper'

describe User do
  let(:user) { FactoryGirl.build(:user) }
  let(:identity) { FactoryGirl.build(:identity, user: user) }

  subject { user }

  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:password) }
  it { is_expected.to respond_to(:password_confirmation) }

  it { is_expected.to be_valid }
end

# class User < ActiveRecord::Base
#   validates :auth_token, uniqueness: true
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :trackable, :validatable,
#          :omniauthable, omniauth_providers: [:facebook, :twitter, :github]

#   before_create :generate_authentication_token!

#   has_many :identities

#   def generate_authentication_token!
#     begin
#       self.auth_token = Devise.friendly_token
#     end while self.class.exists?(auth_token: auth_token)
#   end

#   def self.from_omniauth(auth)
#     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
#       user.provider = auth.provider
#       user.uid = auth.uid
#       user.email = auth.info.email
#       user.password = Devise.friendly_token[0,20]
#     end
#   end

#   def twitter
#     identities.where(provider: 'twitter').first
#   end

#   def twitter_client
#     @twitter_client ||= Twitter.client(access_token: twitter.access_token)
#   end

#   def facebook
#     identities.where(provider: 'facebook').first
#   end

#   def facebook_client
#     @facebook_client ||= Facebook.client(access_token: facebook.access_token)
#   end

#   def github
#     identities.where(provider: 'github').first
#   end

#   def github_client
#     @github_client ||= Github.client(access_token: github.access_token)
#   end
# end