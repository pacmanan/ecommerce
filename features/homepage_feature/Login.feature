Feature: As a user I would like to test the login functionality

  Scenario Outline: Login using incorrect user details
    Given a user on the login page
    When they enter incorrect details
      | username   | password   |
      | <username> | <password> |

    Then they should not be logged in

    Examples:
      | username                  | password |
      | wrongemail@mailinator.com | bogus    |


  Scenario Outline: Login to account using correct details
    Given a user on the homepage
    When they click the login button
    And they enter the correct login details
      | username   | password   |
      | <username> | <password> |

    Then they should be logged in

    Examples:
      | username             | password             |
      | jaems@mailinator.com | jaems@mailinator.com |
