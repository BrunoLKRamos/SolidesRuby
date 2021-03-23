require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require_relative 'page_helper.rb'
require 'faker'
require 'cpf_faker'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)
Selenium::WebDriver::Chrome::Service.driver_path= "../../Projeto/chromeDriverAtualizado/chromedriver.exe"

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'goog:chromeOptions' => {'args' => ['--disable-infobars', 
                                           'start-maximized'] }
        )
    )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 30
    config.app_host = 'https://nayaracorporation.solides.jobs'
end