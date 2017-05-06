class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :item_ct

      t.references :user, null:false, index: true
      t.references :item, null:false, index: true

      t.timestamps
    end
  end
end
