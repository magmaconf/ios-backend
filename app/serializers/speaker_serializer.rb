class SpeakerSerializer < ActiveModel::Serializer
  attributes :name, :twitter_account, :image, :nickname, :bio, :company, :is_keynote, :image_field
end
