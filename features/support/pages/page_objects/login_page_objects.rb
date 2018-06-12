module PageObjects
  module LoginPageObjects
    def username_field
      $browser.text_field(id: 'email')
    end

    def password_field
      $browser.text_field(id: 'passwd')
    end

    def login_button
      $browser.button(id: 'SubmitLogin')
    end

    def account_links
      $browser.ul(class: 'myaccount-link-list')
    end

    def authentication_error_banner
      $browser.div(class: 'alert alert-danger')
    end
  end
end
