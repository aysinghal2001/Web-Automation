require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara'
require 'site_prism'

require_relative '../pages/main_page.rb'

class LoginPage < SitePrism::Page
  set_url 'https://www.saucedemo.com/'
  element :username, :id => 'user-name'
  element :password, :id => 'password'
  element :login, :id => 'login-button'

  def fill_credentials(username, password)
    self.username.set(username)
    self.password.set(password)
  end

  def submit
    self.login.click
  end

end
