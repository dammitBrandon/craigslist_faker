class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text   :description
      t.string :email
      t.string :price

      t.timestamps
    end
  end
end
