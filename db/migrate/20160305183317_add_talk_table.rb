class AddTalkTable < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.integer  :speaker_id
      t.integer  :event_id
      t.integer  :order
      t.string   :name
      t.text     :description
      t.boolean  :is_keynote, default: false
      t.time     :starts_at
      t.time     :ends_at
      t.integer  :rate
      t.text     :note
      t.boolean  :is_fav, default: false
      t.boolean  :is_canceled, default: false
      t.boolean  :has_feedback, default: false

      t.timestamps
    end
  end
end