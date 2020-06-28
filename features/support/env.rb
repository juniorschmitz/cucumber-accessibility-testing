require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require 'pry'
require 'cucumber'
require 'rspec'
require 'faker'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end

Axe.configure do |c|
  c.page = Capybara.page
end
