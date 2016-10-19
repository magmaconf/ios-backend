class Talk < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :event
  belongs_to :schedule

  default_scope -> { order('starts_at asc') }
end
