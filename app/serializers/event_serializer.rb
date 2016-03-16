class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :updated_at
  has_many :talks
end