class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :name, null: false
      t.integer :rank, null: false

      t.timestamps null: false
    end
    add_index :categories, [:name], unique: true
  end
end
