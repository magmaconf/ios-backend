class AddSpeakerTable < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :twitter_account
      t.string :image

      t.timestamps
    end
  end
end


