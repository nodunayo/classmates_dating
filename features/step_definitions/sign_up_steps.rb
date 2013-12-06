Given(/^I am on the new user registration form$/) do
  visit '/users/new'
end

When(/^I fill in my email and password$/) do
  fill_in 'Email', with: 'nadia@foo.com'
  fill_in 'Password', with: '12345678'
end

When(/^my personal details$/) do
  fill_in 'Date of birth', with: '1980-01-01'
  choose 'Male'
end

When(/^the school I graduated from$/) do
  fill_in 'School', with: 'Oxford University'
end

Then(/^I should see a welcome message$/) do
  expect(page).to have_content 'Sign up successful'
end

When(/^I sign up with invalid information$/) do
  fill_in 'Date of birth', with: '2005-01-01'
end