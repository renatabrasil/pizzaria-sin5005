

Given(/^I am on the home page$/) do
  visit root_path
end


# Client
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

# Employee
When(/^I go to the new employees form$/) do
  visit new_employee_path
end

When(/^I go to the edit employees form$/) do
  visit edit_employee_path
end

When(/^I go to the employees page$/) do
  visit employees_path
end

# Order
When(/^I go to the new orders form$/) do
  visit new_order_path
end

When(/^I go to the edit orders form$/) do
  visit edit_order_path
end

When(/^I go to the orders page$/) do
  visit orders_path
end

Given(/^I'm at the login page$/) do
  visit new_user_session_path
end
