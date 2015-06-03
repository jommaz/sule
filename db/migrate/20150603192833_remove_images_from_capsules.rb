class RemoveImagesFromCapsules < ActiveRecord::Migration
  def change
    remove_column :capsules, :images, :string
  end
end
