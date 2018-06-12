module Pages
  def home_page
    @home_page = HomePage.new
  end

  def search_page
    @search_page = SearchPage.new
  end

  def product_page
    @product_page = ProductPage.new
  end

  def checkout_page
    @checkout_page = CheckoutPage.new
  end

  def login_page
    @login_page = LoginPage.new
  end

  def helper
    @helper = Helper.new
  end
end

World(Pages)
