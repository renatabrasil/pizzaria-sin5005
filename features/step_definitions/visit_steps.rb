

Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I go to the new clients form$/) do
  visit new_client_path
end

When(/^I go to the edit clients form$/) do
  visit edit_client_path
end

When(/^I go to the clients page$/) do
  visit clients_path
end

# Pizza

When(/^I go to the new pizzas form$/) do
  visit new_pizza_path
end

When(/^I go to the edit pizzas form$/) do
  visit edit_pizza_path
end

When(/^I go to the pizzas page$/) do
  visit pizzas_path
end



Given(/^I'm at the login page$/) do
  visit new_user_session_path
end
