class AddOrderFieldToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :speaker_order, :integer
  end
end
