Given(/^there is a user with the email "(.*?)" with the password "(.*?)"$/) do |email, password|
  create(:user, email: email, password: password)
end

When(/^I visit the login page$/) do
  visit '/sessions/new'
end

When(/^I fill in email with "(.*?)"$/) do |email|
  fill_in 'Email', with: email
end

When(/^I fill in password with "(.*?)"$/) do |password|
  fill_in 'Password', with: password
end