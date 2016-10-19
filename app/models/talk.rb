class Talk < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :event
  belongs_to :schedule
  before_save :set_starts_at

  default_scope -> { order('starts_at asc') }

  def set_starts_at
    self.starts_at = self.schedule.hour
  end
end
