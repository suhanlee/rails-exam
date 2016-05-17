class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :orgianl_url

      t.timestamps null: false
    end
  end
end
