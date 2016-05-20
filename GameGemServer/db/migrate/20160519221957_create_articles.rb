class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :subject
      t.text :description
      t.integer :like
      t.integer :click

      t.timestamps null: false
    end
  end
end
