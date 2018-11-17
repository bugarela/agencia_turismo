json.extract! restaurante, :id, :nome, :categoria, :endereco_id, :cidade_id, :hotel_id, :created_at, :updated_at
json.url restaurante_url(restaurante, format: :json)
