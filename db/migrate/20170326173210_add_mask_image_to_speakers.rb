class AddMaskImageToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :mask_image, :binary, :limit => 10.megabyte
  end
end
