Feature: Create a New User

  Background:
    * url 'http://localhost:3000'

  Scenario: Successfully create a new user
    Given path 'auth/register'
    And request
    """
    {
      "name": "VP",
      "role": "Administrator",
      "password": "123",
      "createdBy": "Vachan",
      "projectName": "N/A",
      "projectId": "670519704f558d4215c3a1bf"
    }
    """
    When method post
    Then status 200
    And match response == { succeed: true }
