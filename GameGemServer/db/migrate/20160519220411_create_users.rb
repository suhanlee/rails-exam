class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :google_token
      t.string :facebook_token
      t.string :access_token
      t.string :name
      t.string :image_url

      t.timestamps null: false
    end
  end
end
