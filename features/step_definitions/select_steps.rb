Then(/^"(.*?)" should contain "(.*?)"$/) do |dropdown, text|
  expect(page.has_select?(dropdown, :with_options => [text])).to be true
end

Then(/^"(.*?)" should not contain "(.*?)"$/)  do |dropdown, text|
  expect(page.has_no_select?(dropdown, :with_options => [text])).to be true
end
