class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :filename
      t.string :content_type
      t.string :filesize
      t.string :saved_url

      t.timestamps null: false
    end
  end
end
