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
