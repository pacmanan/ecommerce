require_relative 'page_objects/login_page_objects.rb'

class LoginPage
  include PageObjects::LoginPageObjects

  def verify_login_page
    username_field.wait_until_present
  end

  def login_user(username, password)
    username_field.set username
    password_field.set password
    login_button.click
  end

  def verify_user_logged_in
    account_links.wait_until_present
  end

  def verify_incorrect_login_error
    raise 'Error for incorrect username and password not being displayed' unless authentication_error_banner.present?
  end
end
