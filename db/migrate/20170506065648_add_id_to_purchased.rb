class AddIdToPurchased < ActiveRecord::Migration[5.1]
  def change
    add_column :purchaseds, :id, :primary_key
  end
end
