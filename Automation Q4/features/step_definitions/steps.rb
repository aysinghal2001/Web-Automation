require 'rspec'

require_relative '../pages/login_page.rb'
require_relative '../pages/main_page.rb'
$login_page = LoginPage.new
$main_page = MainPage.new

Given('I am on Login Page') do 
  $login_page.load
end

When('I enter valid username and password') do
  $login_page.fill_credentials('standard_user', 'secret_sauce')
  sleep(2)
  $login_page.submit
  sleep(2)
end

Then('I should be able to login successfully') do
  expect($main_page.isLoggedIn).to be true
  sleep(2)
end
