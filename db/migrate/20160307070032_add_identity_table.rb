class AddIdentityTable < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.references :user
      t.string :name
      t.string :email
      t.string :image
      t.string :provider
      t.string :access_token
      t.string :refresh_token
      t.string :uid

      t.timestamps
    end
  end
end
