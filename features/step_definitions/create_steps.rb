Given(/^there is a client with name "(.*?)" phone "(.*?)" and address "(.*?)"$/) do |name, phone, address|
  Client.create(
    name: name,
    phone: phone,
    address: address
  )
end
