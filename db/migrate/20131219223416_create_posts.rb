class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.string :blurb
      t.text :content
      t.references :category

      t.timestamps
    end
  end
end
