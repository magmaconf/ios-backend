class AddIsKeynoteToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :is_keynote, :boolean
    add_column :speakers, :company, :string
  end
end
