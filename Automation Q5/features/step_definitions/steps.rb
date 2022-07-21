require 'selenium-webdriver'
require 'page-object'
require 'data_magic'
require_relative '../pages/question5'
@driver = Selenium::WebDriver.for :chrome


$form_page = FormPage.new(@driver)

Given('I am on the Form page') do 
  $form_page.goto_page
end

When('I enter valid details') do
  $form_page.fill_details('ayush_data')
  sleep(2)
  $form_page.submit_details

end

Then('I should be able to submit the form successfully') do
  expect($form_page.has_submitted).to eq(true)
  sleep(3)
end

When('I enter invalid phone number') do
  $form_page.fill_details('raj_data')
  sleep(2)
  $form_page.submit_details
end

Then('I should not be able to submit the form successfully') do
  expect($form_page.has_submitted).to eq(false)
  sleep(3)
end

