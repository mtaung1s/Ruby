Capybara.app_host="https://www.redfin.com"
Capybara.default_driver=:selenium

Given(/^I'm on Redfin$/) do
  visit("https://www.redfin.com")
end

When(/^I type "([^"]*)" in search field$/) do |search_term|
  fill_in('search-box-input',:with => search_term)
  click_on "Search"
end

Then(/^I should see "([^"]*)" in result$/) do |expected_string|
  page.should have_content expected_string
  find(:xpath, '//div[contains(@class,"Price")]//span[@class="No min"], "100000")]').select_option
  find(:xpath, '//div[contains(@class,"Price")]//span[@class="No max"], "500000")]').select_option
  find(:xpath, '//div[contains(@class,"Bed")]//span[@class="No min"], "3")]').select_option


end

