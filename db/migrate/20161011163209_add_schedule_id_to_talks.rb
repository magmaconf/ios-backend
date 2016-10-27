class AddScheduleIdToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :schedule_id, :integer
  end
end
