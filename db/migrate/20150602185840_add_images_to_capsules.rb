class AddImagesToCapsules < ActiveRecord::Migration
  def change
    add_column :capsules, :images, :string
  end
end
