require_relative 'page_objects/Homepage_objects.rb'

class HomePage
  include PageObjects::HomepageObjects

  def verify_homepage
    search_bar.present?
  end

  def search_for_item(search_text)
    search_bar.set search_text
    search_button.click
  end

  def click_signin_button
    signin_button.click
  end
end
