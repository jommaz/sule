class AddTemplateColumnToCapsules < ActiveRecord::Migration
  def change
    add_column :capsules, :template, :integer
  end
end
