Feature: update a resource

  Background:
    * def body = read("classpath://json//updateEmployee.json")
  Scenario: verify user is able to update a resource
    Given url host
    And path "/update/"+id
    And header Content-Type = "application/json"
    And header Accept = "application.json"
    And request body
    When method put
    Then status 200
    And print response

