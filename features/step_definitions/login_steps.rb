Given(/^a user on the login page$/) do
  home_page.verify_homepage
  home_page.click_signin_button
  login_page.verify_login_page
end

When(/^they enter incorrect details$/) do |table|
  table.hashes.each do |value|
    login_page.login_user value[:username], value[:password]
  end
end

Then(/^they should not be logged in$/) do
  login_page.verify_incorrect_login_error
end
