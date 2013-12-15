Given(/^I am on the inbox page$/) do
  visit '/messages'
end

Given(/^I have received a message$/) do
  dave = create(:user, first_name: "Dave", email: "dave@bar.com")
  Message.create(sender: dave , recipient: @current_user, body: "Hi, Nadia.")
end

Then(/^I should see the message$/) do
  expect(page).to have_content "Hi, Nadia."
end

Given(/^I have sent a message$/) do
  dave = create(:user, first_name: "Dave", email: "dave@bar.com")
  Message.create(sender: @current_user, recipient: dave, body: "Hi, Dave!")
end

Then(/^I should see my sent message$/) do
  expect(page).to have_content "Hi, Dave!"
end

Given(/^I am on the compose message page$/) do
  visit '/messages/new'
end

Given(/^I have submitted the form$/) do
  dave = create(:user, first_name: "Dave", email: "dave@bar.com")
  fill_in 'Recipient', with: "dave@bar.com"
  fill_in 'Body', with: "Hi, Dave!"
  click_button 'Send message'
end
