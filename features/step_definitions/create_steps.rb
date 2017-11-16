Given(/^there is a client with name "(.*?)" phone "(.*?)" and address "(.*?)"$/) do |name, phone, address|
  Client.create(
    name: name,
    phone: phone,
    address: address
  )
end

Given(/^there is an user with username "(.*?)" and password "(.*?)"$/) do |username, password|
  User.create(username: username, password: password)
end

Given(/^there is a pizza with name "(.*?)" and price "(.*?)"$/) do |name, price|
  Pizza.create(name: name, price: price)
end

Given(/^there is an employee with name "(.*?)" office "(.*?)" salary "(.*?)" workload "(.*?)" and telephone "(.*?)"$/) do |name, office, salary, workload, telephone|
  Employee.create(name: name, office: office, salary: salary, workload: workload, telephone: telephone)
end

# Given(/^there is a order with username "(.*?)" and password "(.*?)"$/) do |username, password|
#   User.create(username: username, password: password)
# end
