Feature: user Registration
As a new User
I want to be able to register

  @registration
  Scenario Outline: If I input incorrect password details I will receive the correct error message
    Given I am on the bbc sign in page
    And I click the link to register
    When I input a date of birth
    And input an email and the password details <password>
    Then I receive the corresponding error <error>

#Table of examples below
    Examples:
    |     password       |                                  error                                          |
    | 1234               | Sorry, that password is too short. It needs to be eight characters or more.     |
    | asdgbcasdfasdsad   | Sorry, that password isn't valid. Please include something that isn't a letter. |
