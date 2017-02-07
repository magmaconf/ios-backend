class TalkSerializer < ActiveModel::Serializer
  has_one :speaker
  has_one :talk_rates
  attributes :id, :updated_at, :speaker, :name, :description, :is_keynote, :starts_at,
             :ends_at, :rate, :note, :is_fav, :is_canceled, :has_feedback, :schedule_id, :event_date

  def event_date
    object.event.date
  end
end
