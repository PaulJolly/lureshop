json.extract! item, :id, :name, :price, :sub_category, :category, :rating, :manufacturer, :created_at, :updated_at
json.url item_url(item, format: :json)
