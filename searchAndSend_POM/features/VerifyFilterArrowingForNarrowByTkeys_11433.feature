# Author: Chandra Shekar.V , Photon
# Email ID : chandrashekar.veeramallu@photoninfotech.net
# Date Created: April 11,2013
# Date Signed Off:


Feature: As a Sales Associate, I would like to be able to arrow through and 
select a specific filter value in T1 "Narrow by Brand", 
T2 "Narrow by Product Type" ,or T3 "Other Narrow by Options"
  
  #http://11.120.103.7/projects/unified_navigation/cards/11433
  
Scenario Outline: Verify Filter Arrowing - T1 "Narrow by Brand", T2 "Narrow by Product Type"

  Given I am on POS simulator page
  When I search for the "sns_active_T1_T2_T3_keywords"
	And I click on "<Tkey>"
  Then I should see list of filters listed
	 And I should see first one as "<FilterHeader>" with "Red" outline and "yellow" background
  When I press the "down" arrow key "1" time
  Then I should see second filter selected with "red" outline and "yellow" background
  When I press the "up" arrow key "1" time
  Then I should move one level up with "Red" outline and "Yellow" background
  	 
  Examples:
	|Tkey                  |FilterHeader     |
	|sns_T1_filter_name    |All Brands       |
	|sns_T2_filter_name    |All Product Types|

Scenario Outline: Verify Filter Arrowing - T3 "Other Narrow by Options"

  Given I am on POS simulator page
  When I search for the "sns_active_T1_T2_T3_keywords"
    And I click on "sns_T3_category_name"
    And I should see the list of other filter categories with preceded by a radio button
  When I press the "down" arrow key "1" time
  When I press "Enter"
  Then I should see list of filters listed
	And I should see first one as "<FilterHeader>" with "Red" outline and "yellow" background
  When I press the "down" arrow key "1" time
  Then I should see second filter selected with "Red" outline and "Yellow" background
  When I press the "up" arrow key "1" time
  Then I should move one level up with "Red" outline and "Yellow" background
  
Examples:
|FilterHeader|
|All Genders|