class AddResourceUrlToResource < ActiveRecord::Migration
  def change
    add_column :resources, :resource_url, :string
  end
end
