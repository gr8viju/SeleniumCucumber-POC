Feature: zipcode_invalidInput
		ZIP code should not contain any characters or space or 4 digits

  Scenario Outline: User enters invalid data in Zip code field
    Given I open "<urlAddress>"
    Then I select "<carMake>" from the Make drop down menu
    Then I select "<carModel>" from the Model drop down menu
    Then I clear the zipcode text field
    Then I enter "<zipCode>" into the zipcode text field

    When I click on go
    Then I should see a warning dialog
    Then I close the warning dialog


    Examples:
      | urlAddress                   | carMake | carModel | zipCode |
      | https://autoblog.truecar.com | Lincoln | MKS      | asdfg   |
      | https://autoblog.truecar.com | Lincoln | MKS      | asdf    |
      | https://autoblog.truecar.com | Lincoln | MKS      | asdf   |
      | https://autoblog.truecar.com | Lincoln | MKS      | as df   |
      | https://autoblog.truecar.com | Lincoln | MKS      | 1234    |
      | https://autoblog.truecar.com | Lincoln | MKS      | 1234a   |
      | https://autoblog.truecar.com | Lincoln | MKS      | 12 45   |
      | https://autoblog.truecar.com | Lincoln | MKS      | 2142   |


  Scenario: Close browser
    Then I close browser