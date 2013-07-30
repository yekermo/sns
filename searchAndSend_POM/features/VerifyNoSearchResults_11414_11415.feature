# Author: Chandra Shekar.V , Photon
# Email ID : chandrashekar.veeramallu@photoninfotech.net 
# Modified Date : March 14,2013
# Date Signed Off:


Feature: As a Sales Associate, 
I would like to see clear information and next steps if the keywords I entered did not result in any product matches and also I would like certain Tkeys on the no results screen to be disabled.

  #http://11.120.103.7/projects/unified_navigation/cards/11414
  #http://11.120.103.7/projects/unified_navigation/cards/11415
  #http://11.120.103.7/projects/unified_navigation/cards/13518
  
  Scenario: No results search page details verification

  Given I am on POS simulator page
  When I search for the "sns_no_result_keywords"
  Then I should see page title "Find Merchandise - Search Results"
     And I should see "sns_no_result_text"
     And I should see instructional text "sns_search_keyword_not_foundtext"
     And I should see "sns_no_result_search_text"
	 And I should see "sns_no_result_search_tipstext"
     And I should see the T keys with following states:
  |T key| Label									|Active|
  |T1	|Narrow by Brand						|No|
  |T2	|Narrow by Product Type					|No|
  |T3	|Other "Narrow by" Options				|No|
  |T4	|Remove Filters/ Return to All Results	|No	|
  |T5	|Search Again							|Yes|
  |T6	|Previous Page of Results				|No|
  |T7	|Next Page of Results					|No |
  |T8	|Exit Find Merchandise					|Yes|
