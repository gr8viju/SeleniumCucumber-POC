Feature: zipcode_characters
		ZIP code should not contain any characters

  Scenario Outline: User enters characters in Zip code field
    Given I open "<urlAddress>"
    Then I select "<carMake>" from the Make drop down menu
    Then I select "<carModel>" from the Model drop down menu
    Then I clear the zipcode text field
    Then I enter "<zipCode>" into the zipcode text field

    And I click on go
    When I wait for price page
    Then I should see car price page

    Examples:
      | urlAddress                   | carMake | carModel | zipCode |
      | https://autoblog.truecar.com | Lincoln | MKS      | 02142   |
      | https://autoblog.truecar.com | Lincoln | MKS      | 90025    |



  Scenario: Close browser
    Then I close browser