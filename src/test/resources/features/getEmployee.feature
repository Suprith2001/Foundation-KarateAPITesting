Feature: get a resource

  Background:
    Given url host

  Scenario Outline: verify user is able to get a employee data with id
    When path "/employee/"+id
    And method get
    Then status "<code>"
    And print response
    Examples:
      | code   |
      | Test   |
      | Test 2 |


  Scenario: verify user is unable to get employee data with invalid id
    When path "/employee/"+invalidId
    And method get
    Then status 404
    And print response

