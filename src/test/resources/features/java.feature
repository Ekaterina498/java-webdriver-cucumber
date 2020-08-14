@java
  Feature: Java feature

    @java1
    Scenario: Hello world
 #     Given I say hello world
 #     And I say "hello again!!!"
 #     And I say "say hello!"
 #     And I call 5 times
 #     And I perform actions with "Hello there" and "Hello"
 #     And I calculate numbers
       And  I work with arrays

    @login1
    Scenario: Testing user login
      Given I open login page
      And I enter valid credentials for "user"
      Then I land on dashboard
      And I don't see admin controls

    @login2
    Scenario: Testing admin login
      Given I open login page
      And I enter valid credentials for "admin"
      Then I land on dashboard
      And I see admin controls


