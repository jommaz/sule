class RemoveVideosFromCapsules < ActiveRecord::Migration
  def change
    remove_column :capsules, :videos, :string
  end
end
