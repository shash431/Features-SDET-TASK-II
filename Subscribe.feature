	@subscribeTag

Feature: Subscribe Feature
    @subscribe
    Scenario Outline: Subscribe for NewsLetter and validate the success message
    Given Subscribe is visible
    When I see the appropriate fields in subscribe
    Then I enter email <email> data
    And I click Confirm
    When I click Submit button in Subscribe
    Then I verify success message <message> in Subscribe

    Examples:
   | email | message |
   | shasha.intell@gmail.com | You are now checked-in! |

 @subscribeErrorProne
    Scenario Outline: Subscribe for NewsLetter and validate the success message but an error message is displayed after successful submit 
    Given Subscribe is visible
    When I see the appropriate fields in subscribe
    Then I enter email <email> data
    And I click Confirm
    When I click Submit button in Subscribe
    Then I verify success message <message> in Subscribe
	But I shouldnot see the <errormessage> after successful submit

    Examples:
   | email | message |errormessage|
   | shasha.intell@gmail.com | You are now checked-in! | All fields are required!|

