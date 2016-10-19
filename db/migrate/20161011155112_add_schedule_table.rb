class AddScheduleTable < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.time :hour
      t.timestamps
    end
  end
end
