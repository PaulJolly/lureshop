json.extract! cart, :id, :item_ct, :created_at, :updated_at
json.url cart_url(cart, format: :json)
