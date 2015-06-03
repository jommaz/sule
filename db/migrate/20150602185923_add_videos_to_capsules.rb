class AddVideosToCapsules < ActiveRecord::Migration
  def change
    add_column :capsules, :videos, :string
  end
end
