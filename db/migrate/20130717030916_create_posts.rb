class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text   :description
      t.string :price
      t.string :email
      t.string :category_type
      t.references :category

      t.timestamps
    end
  end
end
