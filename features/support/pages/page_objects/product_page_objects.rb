module PageObjects
  module ProductPageObjects
    def add_to_cart
      $browser.p(id: 'add_to_cart')
    end

    def proceed_to_checkout_button
      $browser.a(title: 'Proceed to checkout')
    end
  end
end
