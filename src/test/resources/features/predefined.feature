@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2 @smoke
  Scenario: Predefined steps for Yahoo
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo"
    Then element with xpath "//input[@id='header-search-input']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='header-search-input']"
    And I click on element with xpath "//button[@id='header-desktop-search-button']"
    Then I wait for element with xpath "//*[@id='web']" to be present
    Then element with xpath "//*[@id='web']" should contain text "Cucumber"


  @predefined3 @smoke
  Scenario:  Predefined steps for Bing
    Given I open url "https://www.bing.com"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@id='sb_form_q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='sb_form_q']"
    And I click on element with xpath "//label[@for='sb_form_go']"
    Then I wait for element with xpath "//ol[@id='b_results']" to be present
    Then element with xpath "//ol[@id='b_results']" should contain text "BDD"

  @predefined4 @smoke
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='gsc-control-wrapper-cse']" to be present
    Then element with xpath "//div[@class='gsc-control-wrapper-cse']" should contain text "BDD"

  @predefined5 @smoke
  Scenario: Predefined steps for DuckDuckGo
    Given  I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//div[@class='results--main']" to be present
    Then element with xpath "//div[@class='results--main']" should contain text "BDD"

  @predefined6 @smoke
  Scenario: Predefined steps for Search encrypt
    Given I open url "https://www.searchencrypt.com/home"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='serp__top-ads']" to be present
    Then element with xpath "//div[@class='serp__top-ads']" should contain text "Driven Development"


  @predefined7 @smoke
  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com/"
    Then I should see page title as "Startpage.com - The world's most private search engine"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//div[@class='ico-wrapper']"
    Then I wait for element with xpath "//div[@class='show-results']" to be present
    Then element with xpath "//div[@class='show-results']" should contain text "Behavior Driven Development"


  @predefined8 @smoke
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@aria-label='Submit']"
    Then I wait for element with xpath "//div[@class='mainline-results']" to be present
    Then element with xpath "//div[@class='mainline-results']" should contain text "BDD"


  @predefined9 @smoke
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com/"
    Then I should see page title as "Swisscows the alternative, data secure search engine."
    Then element with xpath "//input[@name='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='query']"
    And I click on element with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "BDD"

  @predefined10 @smoke
  Scenario: Responsive UI
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    And I resize window to 1280 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I resize window to 800 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I resize window to 400 and 1024
    Then element with xpath "//b[@id='location']" should not be displayed

  @predefined11 @smoke
  Scenario: Min lenght 1
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I clear element with xpath "//input[@name='username']"
    When I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

  @predefined12 @smoke
  Scenario: Min lenght in email 2
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "katrina.fv19dmail.com" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//div[contains(@class,'form-summary')]"
    When I wait for 3 sec
    Then element with xpath "//label[@id='email-error']" should be displayed
    And I clear element with xpath "//input[@name='email']"
    When I type "katrina.fv19@gmail.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed



  @predefined12 @smoke
  Scenario: Min lenght 2
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//div[contains(@class, 'form-summary')]"
    When I wait for 3 sec
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I clear element with xpath "//input[@name='username']"
    When I type "ab" into element with xpath "//input[@name='username']"
    When I wait for 3 sec
    Then element with xpath "//label[@id='username-error']" should not be displayed


  @predefined13 @smoke
  Scenario: Email field
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "hvjwhfehv" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    And I clear element with xpath "//input[@name='email']"
    When I type "katrina.fv19@gmail.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed

  @predefined14 @smoke
  Scenario: Password fields
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "password" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    When I type "password" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled

  @predefined15 @smoke
  Scenario: Name field
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@id='name']"
    When I type "Ekaterina" into element with xpath "//input[@id='firstName']"
    When I type "Filatova" into element with xpath "//input[@id='lastName']"
    When I wait for 5 sec
    And I click on element with xpath "//span[contains(text(),'Save')]"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    When I wait for 5 sec

  @predefined16 @smoke
  Scenario: Predefined steps filling in the fields
    Given I open url "https://skryabin.com/market/quote.html"
    Then I click on element with xpath "//input[@id='name']"
    When I type "Ekaterina" into element with xpath "//input[@id='firstName']"
    When I type "Filatova" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[text()='Save']"
    And I click on element with xpath "//select[@name='countryOfOrigin']"
    Then I click on element with xpath "//option[contains(text(),'Austria')]"
    Then I type "545 Louis Rd, Palo Alto" into element with xpath "//textarea[@id='address']"
    Then I type "password" into element with xpath "//input[@id='password']"
    Then I type "password" into element with xpath "//input[@id='confirmPassword']"
    Then I type "200-20-21" into element with xpath "//input[@name='phone']"
    Then I click on element with xpath "(//input[@name='gender'])[2]"
    When I wait for 2 sec
    Then I click on element with xpath "//option[contains(text(),'Toyota')]"
    Then I type "katrina.fv19@gmail.com" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//input[@id='dateOfBirth']"
    Then I click on element with xpath "//div[@class='ui-datepicker-title']"
    Then I click on element with xpath "//select[@class='ui-datepicker-month']"
    Then I click on element with xpath "//select[@class='ui-datepicker-month']/option[contains(text(),'Aug')]"
    Then I click on element with xpath "//select[@class='ui-datepicker-year']"
    Then I click on element with xpath "//select[@class='ui-datepicker-year']/option[contains(text(),'1981')]"
    And I click on element with xpath "//a[contains(text(),'8')]"
    When I wait for 2 sec
   # Then I click on element with xpath "//button[@id='thirdPartyButton']"
    And I scroll to the element with xpath "//button[@id='thirdPartyButton']" with offset 1
    And I click on element with xpath "//button[@id='thirdPartyButton']"
    Then I accept alert
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy'][@type='checkbox']"
    Then I click on element with xpath "//button[@id='formSubmit']"



  @predefined17 @smoke
    Scenario: End to end test required field
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "Kate123" into element with xpath "//input[@name='username']"
    And I type "katrina.fv19@gmail.com" into element with xpath "//input[@name='email']"
    And I type "password" into element with xpath "//input[@name='password']"
    And I type "password" into element with xpath "//input[@id='confirmPassword']"
    When I click on element with xpath "//input[@id='name']"
    And I type "Ekaterina" into element with xpath "//input[@name='firstName']"
    And I type "Filatova" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "(//span[@class='ui-button-text'])[2]"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "Kate123"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "katrina.fv19@gmail.com"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "Ekaterina Filatova"
    Then element with xpath "//b[@name='password']" should not contain text "password"



  @predefined18 @smoke
  Scenario: End to end test required field 11
    Given I open url "https://skryabin.com/market/quote.html"
    # validate min length of username
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//div[contains(@class, 'form-summary')]"
    Then element with xpath "//label[@id='username-error']" should be displayed
    When I wait for 2 sec
    And I clear element with xpath "//input[@name='username']"
    # Fill out the form
    When I type "Kate123" into element with xpath "//input[@name='username']"
    And I type "katrina.fv19@gmail.com" into element with xpath "//input[@name='email']"
    And I type "password" into element with xpath "//input[@name='password']"
    And I type "password" into element with xpath "//input[@id='confirmPassword']"
    # Fill out name field
    When I click on element with xpath "//input[@id='name']"
    And I type "Ekaterina" into element with xpath "//input[@name='firstName']"
    And I type "Filatova" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "(//span[@class='ui-button-text'])[2]"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    # Submit the form
    And I click on element with xpath "//button[@id='formSubmit']"
    # Validate the values
    Then element with xpath "//div[@id='quotePageResult']" should contain text "Kate123"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "katrina.fv19@gmail.com"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "Ekaterina Filatova"
    Then element with xpath "//b[@name='password']" should not contain text "password"










    







    




    










    



    

    

    

  