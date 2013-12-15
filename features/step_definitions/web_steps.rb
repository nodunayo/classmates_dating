When(/^I click "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I am logged in$/) do
  @current_user = create(:user)
  visit '/sessions/new'
  fill_in :email, with: "nadia@foo.com"
  fill_in :password, with: "12345678"
  click_button "Login"
end