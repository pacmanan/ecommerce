require_relative 'page_objects/product_page_objects.rb'
require 'watir-scroll'

class ProductPage
  include PageObjects::ProductPageObjects

  def verify_product_page
    sleep 2
    add_to_cart.present?
  end

  def add_product_to_cart
    add_to_cart.wait_until_present
    add_to_cart.click
  end

  def proceed_to_checkout
    proceed_to_checkout_button.wait_until_present
    proceed_to_checkout_button.click
  end

  def go_directly_to_product_page
    $browser.goto 'http://automationpractice.com/index.php?id_product=2&controller=product&search_query=blouse&results=1'
  end
end
