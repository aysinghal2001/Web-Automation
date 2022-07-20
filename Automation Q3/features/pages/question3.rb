require 'selenium-webdriver'
require 'page-object'

class LoginPage
  include PageObject
  text_field(:username, :id => 'user-name')
  text_field(:password, :id => 'password')
  button(:login, :id => 'login-button')  

  def goto_page
    navigate_to 'https://www.saucedemo.com'
    @browser.manage.window.maximize
  end

  def login_as(username, password)
    self.username = username
    self.password = password
  end

  def click_button
    login
  end

end
