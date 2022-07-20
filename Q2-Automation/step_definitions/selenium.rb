require 'selenium-webdriver'
# caps = Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options => {detach: true})
driver= Selenium::WebDriver.for :chrome

Given('I am on Login Page') do 
  driver.get 'https://www.saucedemo.com/'
  driver.manage.window.maximize
end

When('I enter valid username and password') do
  driver.find_element(:id, 'user-name').send_keys('standard_user')
  driver.find_element(:id, 'password').send_keys('secret_sauce')
end

Then('I should be able to login successfully') do
  driver.find_element(:id, 'login-button').click
  
end

Given('I am on Home Page') do
  sleep(3)
end

When('I click on Add to Cart button of Sauce Labs Bolt Tshirt product') do 
  driver.find_element(:id, 'add-to-cart-sauce-labs-bike-light').click
  driver.find_element(:id, 'add-to-cart-sauce-labs-onesie').click
end

When('I click on Cart Icon') do 
  driver.find_element(:class, 'shopping_cart_badge').click

end

Then('I should see Checkout page') do 
  driver.find_element(:id, 'checkout').click
end

Then('I should able to place an order successfully') do 
  driver.find_element(:id, 'first-name').send_keys('Ayush')
  driver.find_element(:id, 'last-name').send_keys('Singhal')
  driver.find_element(:id, 'postal-code').send_keys('12345')
  driver.find_element(:id, 'continue').click
  driver.find_element(:id, 'finish').click
  sleep(15)

end


