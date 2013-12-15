Given(/^I am on the inbox page$/) do
  visit '/messages'
end

Given(/^I have received a message$/) do
  dave = create(:user, first_name: "Dave", email: "dave@bar.com")
  Message.create(sender: dave , recipient: @current_user, body: "Hi, Dave.")
end

Then(/^I should see the message$/) do
  expect(page).to have_content "Hi, Dave."
end