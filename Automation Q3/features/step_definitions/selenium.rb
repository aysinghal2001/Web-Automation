require 'selenium-webdriver'
require_relative '../pages/question3'
driver= Selenium::WebDriver.for :chrome
$login_page = LoginPage.new(driver)

Given('I am on Login Page') do 
  $login_page.goto_page
end

When('I enter valid username and password') do
  $login_page.login_as('standard_user', 'secret_sauce')
end

Then('I should be able to login successfully') do
  $login_page.click_button
  sleep(3)
end
