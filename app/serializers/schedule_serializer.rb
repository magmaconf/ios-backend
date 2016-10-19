class ScheduleSerializer < ActiveModel::Serializer
  attributes :name, :hour, :updated_at
  has_many :talks
end
