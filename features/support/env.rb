require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'pry'
require 'selenium-webdriver'
require 'site_prism'

$chrome = ENV['BROWSER']
$chrome_headless = ENV['HEADLESS']

if $chrome_headless
  Capybara.register_driver :selenium_chrome do |app|
    options = ::Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--disable-web-security')
    options.add_argument('--disable-gpu')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-extension')
    options.add_argument('--window-size=1280,1696')
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
  end
elsif $chrome
  Capybara.register_driver :selenium_chrome do |app|
    options = ::Selenium::WebDriver::Chrome::Options.new
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
  end
end

Capybara.default_driver = :selenium_chrome
Capybara.default_max_wait_time = 60

ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]
AUTH = YAML.load_file('./config/authentication.yml')[ENV['ENV']]
