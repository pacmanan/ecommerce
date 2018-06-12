require_relative 'page_objects/search_page_objects.rb'
require 'watir-scroll'

class SearchPage
  include PageObjects::SearchPageObjects

  def verify_search_results(search_text)
    search_result_list.each do |item|
      raise 'Search results contain item other than item searched for' unless item.title.includes search_text
    end
  end

  def verify_no_search_result
    no_search_result_banner.wait_until_present
  end

  def verify_search_result_page
    search_result_pagination.wait_until_present
  end

  def select_product(product_name)
    sleep 2
    search_result_list.each do |item_name|
      item_name.div(:class, 'product-image-container').scroll.to
      if item_name.a(:class, 'product-name').text.include? product_name
        item_name.a(:class, 'product-name').click
        break
      end
    end
  end
end
