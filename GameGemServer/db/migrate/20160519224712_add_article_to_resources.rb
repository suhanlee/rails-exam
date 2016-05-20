class AddArticleToResources < ActiveRecord::Migration
  def change
    add_reference :resources, :article, index: true, foreign_key: true
  end
end
