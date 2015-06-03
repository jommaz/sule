class AddImageToCapsules < ActiveRecord::Migration
  def change
    add_column :capsules, :image, :string
  end
end
