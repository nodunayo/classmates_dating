When(/^click "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end