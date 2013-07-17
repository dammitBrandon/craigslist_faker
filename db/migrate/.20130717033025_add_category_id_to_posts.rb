class AddCategoryIdToPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.add_foreign_key(:posts, :categories)
    end
  end
end
