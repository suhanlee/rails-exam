class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :file_name
      t.string :content_type
      t.string :file_size

      t.timestamps null: false
    end
  end
end
