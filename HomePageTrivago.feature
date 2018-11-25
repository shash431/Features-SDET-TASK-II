	@trivagoPage
Feature: Navigate to Trivago page from Homepage Feature

  @trivago
  Scenario Outline: Click Trivago link from Homepage,search for results and validate results
  Given Trivago is visible
  When I click Trivago
  Then I see the appropriate fields in Trivago searchPage
  When I enter <dataSearch> data in searchPage
  And I click Search button in searchPage
  Then I see the searchResults in Trivago
  And I verify the searchResults in trivago

  Examples:
 | dataSearch |
 | Monterey |

@navigateSearch
  Scenario Outline: Search Destination Feature,click on the option and navigate to trivago search portal to verify the available fields 
  Given topleftIcon is visible
  When I click topleftIcon
  Then I see Destination menu
  When I click DestinationMenu item
  Then I see DestinationSubMenu item
  When I click DestinationSubMenu item
  Then I see destination results
  And I verify destination results
  When I click on searchresult <searchOption>
  Then I navigate to details page
  When I click see it on trivago
  Then I navigate to trivagoSearch page
  And I see searchData field is enabled
  And I see search button is enabled
  And I see the search list items 
  And I see checkin calendar enabled with an option to enter date and time
  And I see checkout calendar enabled with an option to enter date and time
  And I see price dragger is set based on budget
  And I see option to select the room based on the number of persons
  And I see hotel class to select hotel class type
  And I see Guest ratings dropdown to provide the ratings
  And I see Hotel location to choose the option
  And I see More filters which provide an option for Facilities and Amenities
  And I see Sort by option to select the recommendations

   Examples:
   | searchOption |
   | A Stay by the Bay: Affordable San Francisco Hotels near the Downtown |
   
   @itemDealDeatils
  Scenario Outline: Search Destination Feature,click on the option and navigate to trivago search portal to verify the corresponding fields in the   search result item or option
  Given topleftIcon is visible
  When I click topleftIcon
  Then I see Destination menu
  When I click DestinationMenu item
  Then I see DestinationSubMenu item
  When I click DestinationSubMenu item
  Then I see destination results
  And I verify destination results
  When I click on searchresult <searchOption>
  Then I navigate to details page
  When I click see it on trivago
  Then I navigate to trivagoSearch page
  And I see searchData field is enabled
  And I see search button is enabled
  And I see the search list items  
  When I see the search list item 
  And I see the item link name
  Then I see the View images to verify the images available for the result list item
  And I see the description,Location,reviews and ratings
  When I see the item deal advertiser section
  Then I should see the deal advertisers and corresponding price
  And I see MoreDeals link to look into more dealAdvertisers
  When I see item best deal section
  Then I should see the strikethrough price and the offered price 
  And I should see the link of the offered price
  And I should see View Deal link
  

   Examples:
   | searchOption |
   | A Stay by the Bay: Affordable San Francisco Hotels near the Downtown |

