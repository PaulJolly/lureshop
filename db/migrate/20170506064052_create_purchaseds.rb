class CreatePurchaseds < ActiveRecord::Migration[5.1]
  def change
    create_table :purchaseds, id:false do |t|
      t.datetime :date_purchased

      t.references :user, null:false, index: true
      t.references :item, null:false, index: true

      t.timestamps
    end
  end
end
