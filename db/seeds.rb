# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Cadastrando CATEGORIAS...'
categories = [ 'Pet e acessórios',
               'Esportes',
               'Casa',
               'Eletrônicos e Celulares',
               'Música e Hobbies',
               'Bebês e Crianças',
               'Moda e Beleza',
               'Veículos e Barcos',
               'Imóveis',
               'Empregos e Negócios' ]

categories.each do |cat|
  Category.find_or_create_by!(description: cat)
end
puts 'CATEGORIAS cadastradas com sucesso!'
###############################################
puts '.....'
puts '.....'
puts 'Cadastrando ADMINISTRADOR Padrão...'
  Admin.create!(name: Faker::Name.name,
                email: 'admin@admin.com',
                password: '123456',
                password_confirmation: '123456')
puts 'ADMINISTRADOR cadastrado com sucesso!'