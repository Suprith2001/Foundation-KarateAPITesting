Feature: create a employee object

  Background:

    * def body = read("classpath://json//createEmployee.json")

  Scenario: verify user is able to create a employee
    Given url host
    And path "/create"
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method post
    Then status 200
    And print response