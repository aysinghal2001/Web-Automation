require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara'
require 'site_prism'

class MainPage < SitePrism::Page
  def isLoggedIn
    self.has_content?('PRODUCTS')
  end
end
  