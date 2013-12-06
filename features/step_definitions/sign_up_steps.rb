Given(/^I am on the new user registration form$/) do
  visit '/users/new'
end

When(/^I fill in my email and password$/) do
  fill_in 'Email', with: 'nadia@foo.com'
  fill_in 'Password', with: '12345678'
end

When(/^my personal details$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^the school I graduated from$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^click "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a welcome message$/) do
  pending # express the regexp above with the code you wish you had
end