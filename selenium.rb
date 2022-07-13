require 'selenium-webdriver'
# caps = Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options => {detach: true})
driver= Selenium::WebDriver.for :chrome
driver.get 'https://www.saucedemo.com/'
driver.manage.window.maximize
driver.find_element(:id, 'user-name').send_keys('standard_user')
driver.find_element(:id, 'password').send_keys('secret_sauce')
driver.find_element(:id, 'login-button').click
sleep(3)
driver.find_element(:id, 'add-to-cart-sauce-labs-bike-light').click
driver.find_element(:id, 'add-to-cart-sauce-labs-onesie').click
driver.find_element(:class, 'shopping_cart_badge').click
driver.find_element(:id, 'checkout').click
driver.find_element(:id, 'first-name').send_keys('Ayush')
driver.find_element(:id, 'last-name').send_keys('Singhal')
driver.find_element(:id, 'postal-code').send_keys('12345')
driver.find_element(:id, 'continue').click
driver.find_element(:id, 'finish').click
sleep(15)
