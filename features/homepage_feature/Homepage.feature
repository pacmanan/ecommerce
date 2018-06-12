Feature: As a user  I would like to test the homepage of automationpractice.com

  Scenario Outline:: Search for a product
    Given a user on the homepage
    When they search for a product using the search bar
      | product_name   |
      | <product_name> |

    Then they should be take to a result page with all product matching my search criteria
      | product_name   |
      | <product_name> |

    Examples:
      | product_name |
      | dress        |

  Scenario Outline: Search for product using special characters
    Given a user on the homepage
    When they search for a product that is not listed on the site
      | product_name   |
      | <product_name> |

    Then they should be take to a result page with an error shown

    Examples:
      | product_name |
      | pokemon      |

  Scenario Outline: Navigate to a product page
    Given a user clicks on a product
      | product_name   |
      | <product_name> |

    Then they should be take to the description page of that product

    Examples:
      | product_name |
      | blouse       |


