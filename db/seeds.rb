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
