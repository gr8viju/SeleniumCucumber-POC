require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
MAIN_ELEM = {
    "zip_code" => "* id:'home_zip'",
    "car_make" => "* id:'s2id_home_select_make'",
    "car_model" => "* id:'s2id_home_select_model'",
    "go_btn" => "* id:'home_cta'",
    "warning_dlg" => "* id:'simplemodal-container'",
    "warning_dlg_maintxt" => "* id:'buzz_custom_spinner_main'",
    "warning_dlg_supptxt" => "* id:'buzz_header_share_button'",
    "warning_dlg_close_btn" => "* class:'button b10 simplemodal-close'",
    "comment_trait" => "* id:'buzzItemPostComment'"
}
Given(/^I open "(.*?)"$/) do |urlAddress|
  step %[I navigate to "#{urlAddress}"]
end

Then(/^I select "(.*?)" from the Make drop down menu$/) do |carMake|

  click(:id, "s2id_home_select_make")
  enter_text(:xpath, "#{carMake}", "//*[@id='select2-drop']/div/input")
  click(:class, 'select2-result-label')
end

Then(/^I select "(.*?)" from the Model drop down menu$/) do |carModel|
  click(:id, "s2id_home_select_model")
  enter_text(:xpath, "#{carModel}", "//*[@id='select2-drop']/div/input")
  click(:class, 'select2-match')
end

Then(/^I clear the zipcode text field$/) do
  clear_text(:id, "home_zip")end

Then(/^I enter "(.*?)" into the zipcode text field$/) do |zipCode|
  enter_text(:id, "#{zipCode}", "home_zip")
end

Then(/^I click on go$/) do
  click(:id, "home_cta")
end

Then(/^I close the warning dialog$/) do
  click(:xpath, "//*[@id='simplemodal-data']/div[3]/button")
end

Then(/^I should see a warning dialog$/) do
  verify_warningDialog
end


  def verify_warningDialog
    ele_warningDlgMainTxt = $driver.find_element(:xpath, "//*[@id='simplemodal-data']/div[1]/span")
    ele_warningDlgAddlTxt = $driver.find_element(:xpath, "    //*[@id='simplemodal-data']/div[2]/p")
    ele_warningDlgCloseBtn = $driver.find_element(:xpath, "//*[@id='simplemodal-data']/div[3]/button")


    if ele_warningDlgMainTxt.text != 'Oops!'
      raise "Warning dialog not displayed"

    else
      puts "\n" + "Warning dialog is displayed"
    end

    if ele_warningDlgAddlTxt.text != "It looks like you've entered an invalid ZIP code. Please try again."
      raise "\n" + "Warning dialog additional text not displayed"

    else
      puts "\n" + "Warning dialog additional text is displayed"
    end

    if ele_warningDlgCloseBtn.text != "Close"
      raise "\n" + "Close button not displayed"

    else
      puts "\n" + 'Close button is displayed'
    end
  end


Then(/^I should see car price page$/) do
  verify_carPricePage
end

def verify_carPricePage
  ele_pageTitle = get_page_title()
  ele_carName = $driver.find_element(:xpath, "//*[@id='config-header']")


  if ele_pageTitle != 'AOL Autoblog | Price Report'
    raise "Price page is not dispalyed"

  else
    puts "\n" + "Price Page is displayed"
  end

  if ele_carName.text.include? "Lincoln MKS"
    puts "\n" + "Price for correct car model is displayed"


  else
    raise "\n" + "Price for correct model is not displayed"
  end

end


Then(/^I wait for price page$/) do |carModel|

  wait_for_element_to_display(:xpath, "//*[@id='config-header']", 5)

end
