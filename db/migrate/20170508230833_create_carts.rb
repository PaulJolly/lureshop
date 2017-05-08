class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :item_ct
      t.references :item, foreign_key: true
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
