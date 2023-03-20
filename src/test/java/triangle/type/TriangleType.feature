Feature: Calculates the triangle type. 

Background:
    * url 'http://localhost:8080/'
Scenario: Scalene triangle 
    * def escaleno = 
    """
    {
        "sideA" : 2,
        "sideB" : 3,
        "sideC" : 4
    }
    """

    Given path '/type'
    And request escaleno
    When method post
    Then status 200
    * def type = response.type
    * print type 
    And match type contains 'SCALENE'

