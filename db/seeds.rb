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

Pizza.create! :name => 'Frango com Catupiry', :price => '57,00'
Pizza.create! :name => 'Italiana', :price => '57,00'
Pizza.create! :name => 'Lombinho', :price => '60,00'
Pizza.create! :name => 'Paulistana', :price => '54,00'
Pizza.create! :name => 'Nordestina', :price => '60,00'
Pizza.create! :name => 'Quatro Queijos', :price => '57,00'
Pizza.create! :name => 'Vegetariana', :price => '57,00'
