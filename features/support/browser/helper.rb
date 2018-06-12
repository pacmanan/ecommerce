require 'watir'
require 'chromedriver/helper'

Chromedriver.set_version '2.40'

class Helper
  def create_browser
    driver = Selenium::WebDriver.for :chrome
    $browser = Watir::Browser.new driver
    $browser.driver.manage.window.maximize
  end

  def close_browser
    $browser.quit
  end

  def goto_site
    $browser.goto 'http://automationpractice.com/'
  end
end
