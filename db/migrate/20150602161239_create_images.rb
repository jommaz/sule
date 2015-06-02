class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.references :capsule, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
