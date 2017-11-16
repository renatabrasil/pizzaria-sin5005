# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

employee = Employee.create! :name => 'Dono', :office => 'Gerente',
  :salary => '10000', :telephone => '(11) 99999-9999', :workload => "20"

user = User.create! :username => 'admin', :email => 'admin@gmail.com',
  :password => 'admin123', :password_confirmation => 'admin123', :employee_id => employee.id

Client.create! :name => 'Michel Miguel Elias Temer', :phone => '(11) 99999-9999',
  :address => 'Palacio da Jaburu - Lago Paranoá, Brasília - DF, 70297-400'
Client.create! :name => 'Fausto Corrêa da Silva', :phone => '(11) 99999-9999',
    :address => 'Estrada dos Bandeirantes, 6900, Rio de Janeiro - RJ, Brasil.
    CEP: 22.780-086'
Client.create! :name => 'Senor Abravanel', :phone => '(11) 99999-9999',
      :address => 'Av. das Comunicações, n° 04 - Vila Jaraguá CEP 06278-905'

Pizza.create! :name => 'Frango com Catupiry', :price => '57,00'
Pizza.create! :name => 'Italiana', :price => '57,00'
Pizza.create! :name => 'Lombinho', :price => '60,00'
Pizza.create! :name => 'Paulistana', :price => '54,00'
Pizza.create! :name => 'Nordestina', :price => '60,00'
Pizza.create! :name => 'Quatro Queijos', :price => '57,00'
Pizza.create! :name => 'Vegetariana', :price => '57,00'
