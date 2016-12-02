class SpeakerSerializer < ActiveModel::Serializer
  attributes :speaker_order, :name, :twitter_account, :image, :nickname, :bio, :company, :is_keynote, :image_field
end
