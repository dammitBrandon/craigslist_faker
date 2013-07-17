class AddForeignKeyToPosts < ActiveRecord::Migration
  def change
      add_foreign_key( :posts, :categories)
  end
end
