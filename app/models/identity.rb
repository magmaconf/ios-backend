class Identity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, scope: :provider

  def self.find_for_oauth(auth)
    identity = Identity.where(provider: auth.provider, uid: auth.uid).first_or_create
    identity.access_token = auth.credentials.token
    identity.refresh_token = auth.credentials.refresh_token
    identity.name = auth.info.name
    identity.email = auth.info.email
    identity.image = auth.info.image
    identity.save
    identity
  end
end