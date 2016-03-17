class EventSerializer < ActiveModel::Serializer
  attributes :name, :date, :updated_at
  has_many :talks
end