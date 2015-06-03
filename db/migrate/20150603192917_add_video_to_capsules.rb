class AddVideoToCapsules < ActiveRecord::Migration
  def change
    add_column :capsules, :video, :string
  end
end
