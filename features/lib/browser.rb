require 'selenium-cucumber'

class Browser
  attr_reader :driver

  def initialize(browser_name)
    @driver = start_browser(browser_name)
    delete_cookies

  end

  def delete_cookies
    @driver.manage.delete_all_cookies
  end


  def open_page(url)
    @driver.navigate.to(url)

    MainPage.new(@driver)
  end

  def set_timeout(timeout)
    @driver.manage.timeouts.implicit_wait = timeout
  end

  def start_browser(browser)
    case browser
    when 'firefox'
      driver = Selenium::WebDriver.for :firefox
    when 'chrome'
      driver = Selenium::WebDriver.for :chrome
    when 'safari'
      driver = Selenium::WebDriver.for :safari
    end

    driver
  end
end