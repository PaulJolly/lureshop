json.extract! cart, :id, :item_ct, :item_id, :account_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
