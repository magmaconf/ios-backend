class AddSpeakersImageField < ActiveRecord::Migration
  def change
    add_column :speakers, :image_field, :binary, :limit => 10.megabyte
  end
end
