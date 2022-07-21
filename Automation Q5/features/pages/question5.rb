require 'selenium-webdriver'
require 'page-object'
require 'data_magic'

class FormPage
  include PageObject
  include DataMagic

  text_field(:name, :xpath => '/html/body/div/div[2]/form/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:email, :xpath => '/html/body/div/div[2]/form/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:phone_number, :xpath => '/html/body/div/div[2]/form/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:city, :xpath => '/html/body/div/div[2]/form/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input')

  def goto_page
    navigate_to 'https://forms.gle/m9Qw9HgugZGrkrdM6'
    @browser.manage.window.maximize
  end

  def fill_details(person_data)
    populate_page_with data_for 'data/' + person_data
  end

  def has_submitted
    @browser.find_elements(:class, 'RHiWt').size == 0 && @browser.current_url == 'https://docs.google.com/forms/d/e/1FAIpQLSeL6YJfCaZwZbwzxFYATiEN4tcEn2LcHx4LqVm9jWc5FVrDvQ/formResponse'
  end

  def submit_details
    @browser.find_element(:class, 'NPEfkd').click
  end

end
