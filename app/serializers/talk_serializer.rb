class TalkSerializer < ActiveModel::Serializer
  has_one :speaker

  attributes :speaker, :order, :name, :description, :is_keynote, :starts_at,
             :ends_at, :rate, :note, :is_fav, :is_canceled, :has_feedback
end