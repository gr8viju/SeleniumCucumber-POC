
require 'selenium-cucumber'
class MainPage 
	MAIN_ELEM = {
    "zip_code" => "home_zip",
    "car_make" => "s2id_home_select_make",
    "car_model" => "s2id_home_select_model",
    "go_btn" => "home_cta",
    "warning_dlg" => "simplemodal-container",
    "warning_dlg_maintxt" => "* id:'buzz_custom_spinner_main'",
    "warning_dlg_supptxt" => "* id:'buzz_header_share_button'",
    "warning_dlg_close_btn" => "* class:'button b10 simplemodal-close'",
  }


  def initialize(driver)
    @driver = driver
  end

  def select_carmake(carmake)
    click(:id, MAIN_ELEM["car_make"])
    enter_text(:xpath, "#{carMake}", "//*[@id='select2-drop']/div/input")
    click(:class, 'select2-result-label')

    MainPage.new(@driver)

  end

def select_carmodel(carmodel)
    input = @driver.find_element(MAIN_ELEM.car_model);
    input.click

    MainPage.new(@driver)

  end

  def enter_zip(zipcode)
    input = @driver.find_element(MAIN_ELEM.zipcode);
    input.send_keys(zipcode)

    MainPage.new(@driver)
  end



  def select_go()
    input = @driver.find_element(MAIN_ELEM.go_btn);
    input.click

    MainPage.new(@driver)
  end
  def verify_page
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:id => 'main') }
  end
end
