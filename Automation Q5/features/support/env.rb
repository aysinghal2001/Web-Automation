require 'selenium-webdriver'
require 'page-object'
require 'data_magic'

Before do |scenario|
  DataMagic.yml_directory = File.expand_path('data_magic')
  DataMagic.load 'data.yml'
end
