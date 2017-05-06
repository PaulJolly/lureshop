class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :sub_category
      t.string :category
      t.integer :rating
      t.string :manufacturer

      t.timestamps
    end
  end
end
