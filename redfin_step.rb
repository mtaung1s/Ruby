Capybara.app_host="https://www.redfin.com"
Capybara.default_driver=:selenium

Given(/^I'm on Redfin$/) do
  visit("https://www.redfin.com")
end

When(/^I click "([^"]*)"$/) do |arg|
  click_on "Sign in"
end

Then(/^I should see sign in dialog$/) do
  expect(page).to have_content "Sign in"
end


Given(/^I'm on signed in page$/) do
  visit("https://www.redfin.com")
end

When(/^I enter email "([^"]*)" in email field$/) do |arg|
  fill_in 'user[email]', with: 'test@gmail.com'
end

And(/^I enter password "([^"]*)" in password field$/) do |arg|
  fill_in 'user[password]', with: 'password'
  click_button "Sign in"
end

Then(/^I should go to user page$/) do
  expect(page).to have_content "userName"
end


Given(/^I'm on user page$/) do
  visit("https://www.redfin.com")
end

When(/^I type "([^"]*)" in search field$/) do |search_term|
  fill_in('search-box-input',:with => search_term)
  click_on "Search"
end

Then(/^I should see "([^"]*)" in result$/) do |expected_string|
  page.should have_content expected_string
end


And(/^I select three options from downdown list$/) do
  find(:xpath, '//div[contains(@class,"Price")]//span[@class="No min"], "100000")]').select_option
  find(:xpath, '//div[contains(@class,"Price")]//span[@class="No max"], "500000")]').select_option
  find(:xpath, '//div[contains(@class,"Bed")]//span[@class="No min"], "3")]').select_option
end

Then(/^I should see the filtered housing list in result$/) do
  expect(page).to have_content"filter summary font-weight-roman"
end
