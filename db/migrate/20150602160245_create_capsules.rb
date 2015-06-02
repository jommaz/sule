class CreateCapsules < ActiveRecord::Migration
  def change
    create_table :capsules do |t|
      t.datetime :release_date
      t.string :title
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
