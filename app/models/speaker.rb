class Speaker < ActiveRecord::Base
  mount_uploader :image_field, SpeakerImageUploader 
  has_many :talks
end
