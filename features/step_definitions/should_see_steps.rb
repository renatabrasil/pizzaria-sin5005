Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_text(text)
end

Then(/^I should not see "(.*?)"$/) do |text|
  expect(page).not_to have_text(text)
end
