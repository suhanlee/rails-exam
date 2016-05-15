class AddUploadToImage < ActiveRecord::Migration
  def up
    add_attachment :images, :upload
  end
  def down
    remove_attachment :images, :upload
  end
end
