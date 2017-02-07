class CreateRateTable < ActiveRecord::Migration
  def change
    create_table :talk_rates do |t|
      t.integer :rate
      t.string :comment
      t.string :user_name
      t.references :talk
    end
  end
end
