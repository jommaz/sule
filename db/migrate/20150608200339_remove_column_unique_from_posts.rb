class RemoveColumnUniqueFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :unique
  end

  def down
  	remove_column :posts, :unique
  end
end
