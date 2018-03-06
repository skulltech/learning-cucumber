require 'selenium/webdriver'

url = "https://#{ENV['TB_KEY']}:#{ENV['TB_SECRET']}@hub.testingbot.com/wd/hub"

capabilities = Selenium::WebDriver::Remote::Capabilities.new

capabilities['platform'] = ENV['SELENIUM_PLATFORM'] || 'ANY'
capabilities['name'] = 'My first Test'
capabilities['browserName'] = ENV['SELENIUM_BROWSER'] || 'chrome'
capabilities['version'] = ENV['SELENIUM_VERSION'] if ENV['SELENIUM_VERSION']

browser = Selenium::WebDriver.for(:remote, :url => url, :desired_capabilities => capabilities)

Before do |scenario|
	@browser = browser
end

at_exit do
	browser.quit
end
