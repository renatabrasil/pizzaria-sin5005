
Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I fill the "(.*?)" field with "(.*?)"$/) do |field_name, value|
  fill_in field_name, :with => value
end

When(/^I write on the "(.*?)" text area "(.*?)"$/) do |text_area_name, text|
  fill_in text_area_name, :with => text
end

When(/^I fill the placeholder "(.*?)" field with "(.*?)"$/) do |placeholder_name, value|
  fill_in :placeholder => placeholder_name, :with => value
end
