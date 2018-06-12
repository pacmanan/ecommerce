module PageObjects
  module SearchPageObjects
    def search_result_list
      $browser.uls(class: 'product_list')
    end

    def no_search_result_banner
      $browser.p(class: 'alert-warning')
    end

    def search_result_pagination
      $browser.div(class: 'top-pagination-content')
    end
  end
end
