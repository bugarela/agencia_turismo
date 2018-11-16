json.extract! atracao, :id, :descricao, :endereco_id, :dia_visita, :turistico_id, :turistico_type, :created_at, :updated_at
json.url atracao_url(atracao, format: :json)
