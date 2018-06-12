Given(/^a user on the homepage$/) do
  home_page.verify_homepage
end

When(/^they search for a product using the search bar$/) do |table|
  table.hashes.each do |value|
    home_page.search_for_item value[:product_name]
  end
end

Then(/^they should be take to a result page with all product matching my search criteria$/) do |table|
  table.hashes.each do |value|
    home_page.verify_search_results value[:product_name]
  end
end

When(/^they search for a product that is not listed on the site$/) do |table|
  table.hashes.each do |value|
    home_page.search_for_item value[:product_name]
  end
end

Then(/^they should be take to a result page with an error shown$/) do
  search_page.verify_no_search_result
end

Given(/^a user clicks on a product$/) do |table|
  table.hashes.each do |value|
    home_page.verify_homepage
    home_page.search_for_item value[:product_name]
    search_page.select_product value[:product_name]
  end
end

Then(/^they should be take to the description page of that product$/) do
  product_page.verify_product_page
end

When(/^they click the login button$/) do
  home_page.click_signin_button
  login_page.verify_login_page
end

And(/^they enter the correct login details$/) do |table|
  table.hashes.each do |value|
    login_page.login_user value[:username], value[:password]
  end
end

Then(/^they should be logged in$/) do
  login_page.verify_user_logged_in
end
