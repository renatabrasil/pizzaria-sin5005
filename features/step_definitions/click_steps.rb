
When(/^I press the "(.*?)" button$/) do |button_name|
  click_button(button_name)
end

When(/^I click the "(.*?)" link$/) do |link|
  click_link(link)
end

When /^I click on "([^\"]+)" in "(.*?)" row$/ do |text_button, text|
  find('tr', text: text).click_link(text_button)
end
