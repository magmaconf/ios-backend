class AddMissingFieldsToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :nickname, :string
    add_column :speakers, :bio, :text
  end
end
