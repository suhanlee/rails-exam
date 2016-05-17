class AddRedirectUrlToResource < ActiveRecord::Migration
  def up
    add_column :resources, :redirect_url, :string
  end

  def down
    remove_column :resources, :redirect_url
  end
end
