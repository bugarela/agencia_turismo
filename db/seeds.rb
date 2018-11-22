# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  Cidade.create(
    nome: Faker::Address.city,
    estado: Faker::Address.state_abbr,
    populacao: Faker::Number.number(6)
  )
end

100.times do
  Cliente.create(
    cpf: Faker::Number.number(11),
    nome: Faker::Name.name,
    email: Faker::Internet.email,
    telefone: "9" + Faker::Number.number(8)
  )
end

100.times do
  Endereco.create(
      logradouro: Faker::Address.street_suffix + Faker::Address.street_name,
      numero: Faker::Address.building_number,
      cep: Faker::Number.leading_zero_number(7)
  )
end

1000.times do
  Igreja.create(
    data_construcao: Faker::Date.birthday(100, 500),
    estilo_construcao: Faker::HitchhikersGuideToTheGalaxy.starship,
    descricao: Faker::TvShows::Friends.location,
    endereco: Endereco.find(Faker::Number.between(1, 100)),
    cidade: Cidade.find(Faker::Number.between(1, 100))
  )
end

1000.times do
  Parque.create(
    descricao: Faker::TvShows::Friends.location,
    endereco: Endereco.find(Faker::Number.between(1, 100)),
    cidade: Cidade.find(Faker::Number.between(1, 100))
  )
end

10.times do
  Pacote.create(
    valor: Faker::Number.decimal(2),
    data_inicio: Faker::Date.between(Date.today, 5.days.from_now),
    data_fim: Faker::Date.between(25.days.from_now, 30.days.from_now),
    cidade: Cidade.find(Faker::Number.between(1, 100))
  )
end

for i in 1..10
  Faker::Number.between(1, 4).times do
    Atracao.create(
      pacote: Pacote.find(i),
      turistico_id: Faker::Number.between(1, 100),
      turistico_type: 'Igreja',
      dia_visita: Faker::Date.between(10.days.from_now, 20.days.from_now)
    )
  end
end

10.times do
  Compra.create(
    pacote: Pacote.find(Faker::Number.between(1, 10)),
    cliente: Cliente.find(Faker::Number.between(1, 100))
  )
end

500.times do
  Hotel.create(
    nome: Faker::TvShows::Friends.location,
    categoria: Faker::Number.between(3, 5).to_s + " stars",
    cidade: Cidade.find(Faker::Number.between(1, 100)),
    endereco: Endereco.find(Faker::Number.between(1, 100))
  )
end

500.times do
  Restaurante.create(
    nome: Faker::Food.dish,
    categoria: Faker::Subscription.plan,
    cidade: Cidade.find(Faker::Number.between(1, 100)),
    endereco: Endereco.find(Faker::Number.between(1, 100)),
    hotel: Hotel.find(Faker::Number.between(1, 100))
  )
end

100.times do
  TipoDeQuarto.create(
    nome: Faker::Subscription.plan,
    valor_diaria: Faker::Number.decimal(2, 2),
    hotel: Hotel.find(Faker::Number.between(1, 100))
  )
end

100.times do
  Quarto.create(
    numero: Faker::Number.between(1, 9).to_s + "0" + Faker::Number.between(1, 9).to_s,
    tipo_de_quarto: TipoDeQuarto.find(Faker::Number.between(1, 100))
  )
end
