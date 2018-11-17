json.extract! hotel, :id, :nome, :categoria, :endereco_id, :cidade_id, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
