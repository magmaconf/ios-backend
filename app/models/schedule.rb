class Schedule < ActiveRecord::Base
  has_many :talks

  validates :hour, presence: true

  before_save :set_name
  default_scope -> { order('name asc') }

  private

    def set_name
      self.name = self.hour.to_s(:time)
    end
end
