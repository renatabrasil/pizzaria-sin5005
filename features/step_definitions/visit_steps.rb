

Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I go to the new clients form$/) do
  visit new_client_path
end

When(/^I go to the edit clients form$/) do
  visit edit_client_path
end
