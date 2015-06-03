class AddUniqueToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :unique, :integer
  end
end
