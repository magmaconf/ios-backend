class Speaker < ActiveRecord::Base
  mount_uploader :image_field, SpeakerImageUploader 
  mount_uploader :mask_image, SpeakerImageUploader 
  has_many :talks
  default_scope -> { order('speaker_order asc') }
end
