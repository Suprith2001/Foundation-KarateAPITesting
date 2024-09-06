Feature: delete employee

  Scenario: verify user is able to delete a employee
    Given url host
    And path "/delete/"+id
    When method delete
    Then status 200
    And print response