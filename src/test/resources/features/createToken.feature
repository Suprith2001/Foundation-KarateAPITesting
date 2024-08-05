Feature: create a token
  Background:
    * def body = read("classpath://json//createToken.json")
  Scenario: verify user is able to create a token
    When url host
    And path "/auth"
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    And method post
    Then status 200
    And print response