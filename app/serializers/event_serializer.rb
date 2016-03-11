class EventSerializer < ActiveModel::Serializer
  attributes :name, :date
  has_many :talks
end