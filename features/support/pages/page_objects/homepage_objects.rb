module PageObjects
  module HomepageObjects
    def search_bar
      $browser.text_field(i: 'search_query_top')
    end

    def search_button
      $browser.button(name: 'submit_search')
    end

    def signin_button
      $browser.a(class: 'login')
    end
  end
end
